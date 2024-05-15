%% Before running, set up the testbench cell name on line 8
% ALU output should be labeled as Y
% ALU inputs should be labeled as A0, A1, ..., A7 and B0, B1, ..., B7
% ALU function select inputs should be labeled as FUN_SEL0, FUN_SEL1, FUN_SEL2
%

% set up the name of your testbench cell
tb_name = 'alu_testbench_directory';

% set up cds_srr function
addpath('/opt/cadence/INNOVUS201/tools.lnx86/spectre/matlab/64bit');

% directory that contains the simulation outputs
directory = sprintf('%s/Cadence/%s.psf', getenv('HOME'), tb_name);

Vdd = 1.2; 

% define period (in ps)
period = 1000; 

a_signals = cell(1, 8);
b_signals = cell(1, 8);
for i = 0:7
    a_signals{i+1} = cds_srr(directory, 'tran-tran', sprintf('/A%d', i), 0);
    b_signals{i+1} = cds_srr(directory, 'tran-tran', sprintf('/B%d', i), 0);
end

fun_sel_signals = cell(1, 3);
for i = 0:2
    fun_sel_signals{i+1} = cds_srr(directory, 'tran-tran', sprintf('/FUN_SEL%d', i), 0);
end

% convert time into ps
t_ps = a_signals{1}.time * 1e12;

% extract voltages of signals
a = zeros(length(t_ps), 8);
b = zeros(length(t_ps), 8);
fun_sel = zeros(length(t_ps), 3);
for i = 1:8
    a(:, i) = a_signals{i}.V;
    b(:, i) = b_signals{i}.V;
end
for i = 1:3
    fun_sel(:, i) = fun_sel_signals{i}.V;
end

y = cds_srr(directory, 'tran-tran', '/Y', 0);
y_voltage = y.V;

% Function select logic: converting the voltage levels to binary
fun_sel_bin = zeros(size(fun_sel));
for i = 1:3
    fun_sel_bin(:, i) = fun_sel(:, i) > (Vdd / 2);
end

expected_output_logic = @(a, b, fun_sel) ...
    (bi2de(fun_sel, 'left-msb') == 3'b000) .* (a + b) + ...
    (bi2de(fun_sel, 'left-msb') == 3'b001) .* (a - b) + ...
    (bi2de(fun_sel, 'left-msb') == 3'b010) .* (bitand(a, b)) + ...
    (bi2de(fun_sel, 'left-msb') == 3'b011) .* (bitor(a, b)) + ...
    (bi2de(fun_sel, 'left-msb') == 3'b100) .* (bitxor(a,b)+ ...
    (bi2de(fun_sel, 'left-msb') == 3'b101) .* (~a); 

exp_y = zeros(size(y_voltage));
for i = 1:length(t_ps)
    exp_y(i) = expected_output_logic(a(i, :), b(i, :), fun_sel_bin(i, :));
end

err_flag = 0;
for i = 1:length(t_ps)
    if abs(y_voltage(i) - exp_y(i)) > Vdd / 2
        disp(['Mismatch at t=', num2str(t_ps(i)), 'ps: expected ', num2str(exp_y(i)), ', got ', num2str(y_voltage(i))]);
        err_flag = err_flag + 1;
    end
end

if err_flag == 0
    disp('Your ALU circuit has no errors :)');
end