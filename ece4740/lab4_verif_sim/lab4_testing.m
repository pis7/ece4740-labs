function main_code()
    tb_name = 'lab4_test';
    addpath('/opt/cadence/INNOVUS201/tools.lnx86/spectre/matlab/64bit');
    directory = sprintf('%s/Cadence/ece4740/lab4_verif_sim/%s.psf', getenv('HOME'), tb_name);
    Vdd = 1.2;
    test_file = fullfile(directory, 'tran.tran');
    if ~isfile(test_file)
        error('The directory is not a spectre output directory.');
    end
    clk_signal = cds_srr(directory, 'tran-tran', '/CLK', 0);
    clk_values = clk_signal.V;
    previous_clk_value = 0;
    % Initialize arrays to store A, B, Fun_Sel, Y (graph), Y (estimated), and overflow values for each test case
    A_values = zeros(52, 8);
    B_values = zeros(52, 8);
    Y_values = zeros(52, 8);
    Fun_Sel_values = zeros(52, 3);
    Y_estimated_values = zeros(52, 8);
    Overflow_values = zeros(52, 1); % 1 bit each for overflow
    Overflow_estimated_values = zeros(50, 1);
    output_idx = 1;
    for clk_idx = 2:length(clk_values)
        if is_rising_edge(clk_values(clk_idx), previous_clk_value, Vdd)
            a = zeros(1, 8);
            b = zeros(1, 8);
            fun_sel = zeros(1, 3);
            y = zeros(1, 8);
            y_estimated = zeros(1, 8);
            overflow = 0; % Initialize overflow to 0
            for i = 0:7
                signal_name_a = sprintf('/A%d', 7-i);
                signal_name_b = sprintf('/B%d', 7-i);
                signal_name_y = sprintf('/Y%d', 7-i);
                try
                    a_signal = cds_srr(directory, 'tran-tran', signal_name_a, 0);
                    b_signal = cds_srr(directory, 'tran-tran', signal_name_b, 0);
                    y_signal = cds_srr(directory, 'tran-tran', signal_name_y, 0);
                    % Convert analog values to binary
                    a(i+1) = double(a_signal.V(clk_idx) > (Vdd / 2));
                    b(i+1) = double(b_signal.V(clk_idx) > (Vdd / 2));
                    y(i+1) = double(y_signal.V(clk_idx) > (Vdd / 2));
                catch ME
                    error('Error reading signals %s and %s: %s', signal_name_a, signal_name_b, ME.message);
                end
            end
            % Read overflow signal
            signal_name_overflow = sprintf('/OF'); % Assuming only one overflow signal
            try
                overflow_signal = cds_srr(directory, 'tran-tran', signal_name_overflow, 0);
                overflow = double(overflow_signal.V(clk_idx) > (Vdd / 2));
            catch ME
                error('Error reading signal %s: %s', signal_name_overflow, ME.message);
            end
            % Store A, B, and Y values for the current test case
            A_values(output_idx, :) = a;
            B_values(output_idx, :) = b;
            Y_values(output_idx, :) = y;
            % Read Fun_Sel values for the current test case
            for i = 0:2 % Loop from 0 to 2 for correct order of bits
                signal_name_fun_sel = sprintf('/FUN_SEL%d', i);
                try
                    fun_sel_signal = cds_srr(directory, 'tran-tran', signal_name_fun_sel, 0);
                    % Convert analog values to binary
                    fun_sel(3-i) = double(fun_sel_signal.V(clk_idx) > (Vdd / 2)); % Store bits in correct order
                catch ME
                    error('Error reading signal %s: %s', signal_name_fun_sel, ME.message);
                end
            end
            % Calculate and store the estimated Y values for the current test case
            [y_estimated, ~] = calculate_expected_output(a, b, fun_sel);
            Y_estimated_values(output_idx, :) = y_estimated;
            [~, overflow_estimated] = calculate_expected_output(a, b, fun_sel);
            Overflow_estimated_values(output_idx) = overflow_estimated;
            % Store Fun_Sel values for the current test case
            Fun_Sel_values(output_idx, :) = fun_sel;
            % Store the overflow value for the current test case
            Overflow_values(output_idx) = overflow;
            output_idx = output_idx + 1;
        end
        % Update previous_clk_value
        previous_clk_value = clk_values(clk_idx);
        % Stop after test 52
        if output_idx > 52
            break;
        end
    end
    % Delete the first two rows of Y_values
    Y_values(1:2,:) = [];
    % Append two rows of zeros at the end of Y_values
    num_rows_to_insert = 2;
    num_columns = size(Y_values, 2);
    Y_values = [Y_values; zeros(num_rows_to_insert, num_columns)];
    % Delete the first two rows of Overflow_values
    Overflow_values(1:2) = [];
    % Append two rows of zeros at the end of Overflow_values
    Overflow_values = [Overflow_values; zeros(num_rows_to_insert, 1)];
    % Print A_values, B_values, Fun_Sel_values, Y_values, and Y_estimated_values arrays
    disp('A_values:');
    disp(A_values);
    disp('B_values:');
    disp(B_values);
    disp('Y_values:');
    disp(Y_values);
    disp('Y_estimated_values:');
    disp(Y_estimated_values);
    disp('Fun_Sel_values:');
    disp(Fun_Sel_values);
    disp('Overflow_values (from PSF file):');
    disp(Overflow_values);
    disp('Overflow_values (calculated):');
    disp(Overflow_estimated_values);
    % Test bench to compare Y_values with Y_estimated_values and overflow bit
    num_test_cases = size(Y_values, 1);
    num_successful_tests = 0;
    for test_case = 1:num_test_cases
        % Decode the function selection
        op = decode_fun_sel(Fun_Sel_values(test_case, :));
        % Print test information
        fprintf('Test #%d: %s:\n', test_case, op);
        fprintf('A: %s\n', num2str(A_values(test_case, :)));
        fprintf('B: %s\n', num2str(B_values(test_case, :)));
        fprintf('FUN_SEL: %s\n', num2str(Fun_Sel_values(test_case, :), '%d'));
        fprintf('Y: %s\n', num2str(Y_values(test_case, :)));
        fprintf('Y_MatLab: %s\n', num2str(Y_estimated_values(test_case, :)));
        % Initialize the result to success
        result = '(*Success*)';
        % Check if Y_values = Y_estimated_values
        if ~isequal(Y_values(test_case, :), Y_estimated_values(test_case, :))
            result = '(*Failure*)';
        end
        % If the operation is addition or subtraction, check the overflow bit
        if strcmp(op, 'Addition') || strcmp(op, 'Subtraction')
            if Overflow_values(test_case) ~= Overflow_estimated_values(test_case)
                result = '(*Failure*)';
            end
            % Print overflow values
            fprintf('Overflow (actual): %d\n', Overflow_values(test_case));
            fprintf('Overflow (estimated): %d\n', Overflow_estimated_values(test_case));
        end
        % Print the result for this test case
        fprintf('%s\n\n', result);
        % Increment the number of successful tests if the result is success
        if strcmp(result, '(*Success*)')
            num_successful_tests = num_successful_tests + 1;
        end
    end
    % Calculate and print success rate
    success_rate = (num_successful_tests / num_test_cases) * 100;
    fprintf('Success Rate: %.2f%%\n', success_rate);
    try
    catch ME
        fprintf('Error: %s\n', ME.message);
        return;
    end
end
% Helper function to calculate the expected output and overflow
function [Y_bitwise, overflow] = calculate_expected_output(a, b, fun_sel)
    % Convert binary vectors to integers before processing
    a_dec = int64(-1*a(1)*2.^7 + a(2)*2.^6 + a(3)*2.^5 + a(4)*2.^4 + a(5)*2.^3 + a(6)*2.^2 + a(7)*2 + a(8));
    b_dec = int64(-1*b(1)*2.^7 + b(2)*2.^6 + b(3)*2.^5 + b(4)*2.^4 + b(5)*2.^3 + b(6)*2.^2 + b(7)*2 + b(8));
    fun_sel_dec = bi2de(int64(fun_sel), 'left-msb');
    overflow = 0; % Initialize overflow to 0
    switch fun_sel_dec
        case 0 % Addition
            [Y_dec, overflow] = add_with_overflow(a_dec, b_dec);
        case 1 % Subtraction
            [Y_dec, overflow] = sub_with_overflow(a_dec, b_dec);
        case 2 % AND
            Y_dec = bitand(a_dec, b_dec);
        case 3 % OR
            Y_dec = bitor(a_dec, b_dec);
        case 4 % XOR
            Y_dec = bitxor(a_dec, b_dec);
        case 5 % Inversion (Only A)
            Y_dec = bitcmp(a_dec);
        otherwise
            error('Unsupported function selection');
    end
    % Cap the result to 8 bits and remove the highest bit
    Y_dec = bitand(Y_dec, 255); % Cap result to 8 bits
    Y_bitwise = fliplr(de2bi(Y_dec, 8)); % Convert to binary array and reverse to match the bit order
end
function [sum, overflow] = add_with_overflow(a, b)
    % Calculate the sum
    sum = a + b;
    % Check for overflow
    if sum < -128
       overflow = 1;
       sum = sum + 256;
    elseif sum > 127
      overflow = 1;
      sum = sum - 256;
    else
        overflow = 0;
        sum = a + b;
        % Adjust the sum to fit within 8 bits
    end
end
% Helper function to perform subtraction with overflow detection
function [difference, overflow] = sub_with_overflow(a, b)
    % Calculate the sum
    difference = a - b;
    % Check for overflow
    if difference < -128
       overflow = 1;
       difference = difference + 256;
    elseif difference > 127
      overflow = 1;
      difference = difference - 256;
    else
        overflow = 0;
        difference = a - b;
        % Adjust the sum to fit within 8 bits
    end
end
function rising_edge_detected = is_rising_edge(CLK, previous_CLK, Vdd)
    rising_edge_detected = (CLK == Vdd) && (previous_CLK < CLK);
end
function op = decode_fun_sel(fun_sel)
    % Convert binary array to decimal
    fun_sel_dec = bi2de(fun_sel, 'left-msb');
    % Debugging: Print the decimal value of function selection
    fprintf('Function Selection Decimal Value: %d\n', fun_sel_dec);
    % Map decimal values to operations
    switch fun_sel_dec
        case 0
            op = 'Addition';
        case 1
            op = 'Subtraction';
        case 2
            op = 'AND';
        case 3
            op = 'OR';
        case 4
            op = 'NOR';
        case 5
            op = 'Inversion (Only A)';
        otherwise
            error('Unsupported function selection');
    end
end