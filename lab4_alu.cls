*******************************************************************************
****** lab4_xor_1bit schematic ece4740  <vs>  lab4_xor_1bit layout ece4740
*******************************************************************************

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(nmos1v) MOS                                      6       6           2       2
(pmos1v) MOS                                      6       6           2       2
(nmos1v:SerMos2#1) MosBlk                         -       -           2       2
(pmos1v:SerMos2#1) MosBlk                         -       -           2       2

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(nmos1v) MOS                                      2       2           0       0
(pmos1v) MOS                                      2       2           0       0
(nmos1v:SerMos2#1) MosBlk                         2       2           1       1
(pmos1v:SerMos2#1) MosBlk                         2       2           0       0
                                             ------  ------      ------  ------
Total                                             8       8           1       1

Match Statistics for Nets                         7       7           0       0

================================================================[lab4_xor_1bit]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net5
S       1   of nmos1v {D S}
S       1   of pmos1v {D S}
S       1   of nmos1v:SerMos2#1 {IN1 IN2}
S       1   of pmos1v:SerMos2#1 {IN1 IN2}

Layout Net:  avC6
L       1   of nmos1v {D S}
L       1   of pmos1v {D S}
L      *2   of nmos1v:SerMos2#1 {IN1 IN2}
L       1   of pmos1v:SerMos2#1 {IN1 IN2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  A
S       1   of nmos1v G
S       1   of pmos1v G
S      *1   of nmos1v:SerMos2#1 {IN1 IN2}
S       1   of pmos1v:SerMos2#1 {IN1 IN2}

Layout Net:  avC4
L       1   of nmos1v G
L       1   of pmos1v G
L       1   of pmos1v:SerMos2#1 {IN1 IN2}

================================================================[lab4_xor_1bit]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?net5
S       1   of nmos1v {D S}
S       1   of pmos1v {D S}
S       1   of nmos1v:SerMos2#1 {IN1 IN2}
S       1   of pmos1v:SerMos2#1 {IN1 IN2}
S
S ?A
S       1   of nmos1v G
S       1   of pmos1v G
S       1   of nmos1v:SerMos2#1 {IN1 IN2}
S       1   of pmos1v:SerMos2#1 {IN1 IN2}

================================================================[lab4_xor_1bit]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avC4
L       1   of nmos1v G
L       1   of pmos1v G
L       1   of pmos1v:SerMos2#1 {IN1 IN2}
L
L ?avC6
L       1   of nmos1v {D S}
L       1   of pmos1v {D S}
L       2   of nmos1v:SerMos2#1 {IN1 IN2}
L       1   of pmos1v:SerMos2#1 {IN1 IN2}

================================================================[lab4_xor_1bit]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: I##14  nmos1v:SerMos2#1

S Pin        Net
S ---        ---
S OUT        OUT
S OUT2       gnd!
S TERM4      gnd!
S IN1        B
S IN2        A

================================================================[lab4_xor_1bit]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    I##14  nmos1v:SerMos2#1

L Pin        Net
L ---        ---
L OUT        gnd!
L OUT2       OUT
L TERM4      gnd!
L IN1        B
L IN2        net5

================================================================[lab4_xor_1bit]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 2          2         Bad Matched Nets
 1          1         Unmatched Instances

*******************************************************************************
****** lab4_alu schematic ece4740  <vs>  lab4_alu layout ece4740
*******************************************************************************

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(lab1inv_narrow) Cell                             1       1           1       1
(lab3_dff_onecell) Cell                           1       1           1       1
(lab4_2_input_nor) Cell                           1       1           1       1
(lab4_8bit_reg) Cell                              3       3           3       3
(lab4_8bit_tristatebuffer) Cell                   5       5           5       5
(lab4_adder_top) Cell                             1       1           1       1
(lab4_and) Cell                                   1       1           1       1
(lab4_decoder) Cell                               1       1           1       1
(lab4_inv) Cell                                   1       1           1       1
(lab4_or) Cell                                    1       1           1       1
(lab4_xor_1bit) Cell                              1       1           1       1
(lab4_xor_8bit) Cell                              1       1           1       1

Complex Swappability Expansion Statistics
=========================================        Reduced            Expanded
Cell/Device                               schematic  layout   schematic  layout
(lab4_8bit_reg) Cell                              3       3           0       0
(lab4_8bit_tristatebuffer) Cell                   5       5           0       0
(lab4_and) Cell                                   1       1           0       0
(lab4_decoder) Cell                               1       1           0       0
(lab4_inv) Cell                                   1       1           0       0
(lab4_or) Cell                                    1       1           0       0
(lab4_xor_8bit) Cell                              1       1           0       0
(lab4_8bit_reg:Swap0) SwapBlk                     -       -           3       3
(lab4_8bit_reg:Swap1) SwapBlk                     -       -          24      24
(lab4_8bit_tristatebuffer:Swap0) SwapBlk          -       -           5       5
(lab4_8bit_tristatebuffer:Swap1) SwapBlk          -       -          40      40
(lab4_and:Swap0) SwapBlk                          -       -           1       1
(lab4_and:Swap1) SwapBlk                          -       -           8       8
(lab4_decoder:Swap0) SwapBlk                      -       -           1       1
(lab4_decoder:Swap1) SwapBlk                      -       -           2       2
(lab4_inv:Swap0) SwapBlk                          -       -           1       1
(lab4_inv:Swap1) SwapBlk                          -       -           8       8
(lab4_or:Swap0) SwapBlk                           -       -           1       1
(lab4_or:Swap1) SwapBlk                           -       -           7       7
(lab4_xor_8bit:Swap0) SwapBlk                     -       -           1       1
(lab4_xor_8bit:Swap1) SwapBlk                     -       -           8       8

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(lab1inv_narrow) Cell                             1       1           0       0
(lab3_dff_onecell) Cell                           1       1           0       0
(lab4_2_input_nor) Cell                           1       1           0       0
(lab4_8bit_reg) Cell                              0       0           0       0
(lab4_8bit_tristatebuffer) Cell                   0       0           0       0
(lab4_adder_top) Cell                             1       1           0       0
(lab4_and) Cell                                   0       0           0       0
(lab4_decoder) Cell                               0       0           0       0
(lab4_inv) Cell                                   0       0           0       0
(lab4_or) Cell                                    0       0           0       0
(lab4_xor_1bit) Cell                              1       1           0       0
(lab4_xor_8bit) Cell                              0       0           0       0
(lab4_8bit_reg:Swap0) SwapBlk                     3       3           0       0
(lab4_8bit_reg:Swap1) SwapBlk                    24      24           0       0
(lab4_8bit_tristatebuffer:Swap0) SwapBlk          5       5           0       0
(lab4_8bit_tristatebuffer:Swap1) SwapBlk         40      40           4       4
(lab4_and:Swap0) SwapBlk                          1       1           0       0
(lab4_and:Swap1) SwapBlk                          8       8           0       0
(lab4_decoder:Swap0) SwapBlk                      1       1           0       0
(lab4_decoder:Swap1) SwapBlk                      2       2           0       0
(lab4_inv:Swap0) SwapBlk                          1       1           0       0
(lab4_inv:Swap1) SwapBlk                          8       8           0       0
(lab4_or:Swap0) SwapBlk                           1       1           0       0
(lab4_or:Swap1) SwapBlk                           7       7           1       1
(lab4_xor_8bit:Swap0) SwapBlk                     1       1           0       0
(lab4_xor_8bit:Swap1) SwapBlk                     8       8           2       2
                                             ------  ------      ------  ------
Total                                           115     115           7       7

Match Statistics for Nets                       204     205           0       1

=====================================================================[lab4_alu]
====== Open Instance Connections ==============================================
===============================================================================

Layout net: avC54 should connect to I##35/Y7

=====================================================================[lab4_alu]
====== Unmatched Internal Nets ================================================
===============================================================================

L ?avC64

=====================================================================[lab4_alu]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net61
S      *1   of lab4_adder_top CINF
S       1   of lab4_xor_1bit A

Layout Net:  avC103
L      *1   of lab4_adder_top COUT
L       1   of lab4_xor_1bit A

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  net34
S      *1   of lab4_adder_top COUT
S       1   of lab4_xor_1bit B

Layout Net:  avC107
L      *1   of lab4_adder_top CINF
L       1   of lab4_xor_1bit B

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 3)
Schematic Net:  net7
S       1   of lab4_adder_top A0
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S      *1   of lab4_xor_8bit:Swap1 A0

Layout Net:  avC33
L       1   of lab4_adder_top A0
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L      *1   of lab4_xor_8bit:Swap1 B0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 4)
Schematic Net:  net10
S       1   of lab4_adder_top A1
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S      *1   of lab4_xor_8bit:Swap1 A0

Layout Net:  avC39
L       1   of lab4_adder_top A1
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L      *1   of lab4_xor_8bit:Swap1 B0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 5)
Schematic Net:  net13
S       1   of lab4_adder_top A2
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S      *1   of lab4_xor_8bit:Swap1 A0

Layout Net:  avC56
L       1   of lab4_adder_top A2
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L      *1   of lab4_xor_8bit:Swap1 B0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 6)
Schematic Net:  net2
S       1   of lab4_adder_top A3
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S      *1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S      *1   of lab4_xor_8bit:Swap1 A0

Layout Net:  avC59
L       1   of lab4_adder_top A3
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L      *1   of lab4_or:Swap0 {A7 B7}
L       1   of lab4_inv:Swap1 A0
L      *1   of lab4_xor_8bit:Swap1 B0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 7)
Schematic Net:  net16
S       1   of lab4_adder_top A4
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S      *1   of lab4_xor_8bit:Swap1 A0

Layout Net:  avC49
L       1   of lab4_adder_top A4
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L      *1   of lab4_xor_8bit:Swap1 B0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 8)
Schematic Net:  net15
S       1   of lab4_adder_top A5
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S      *1   of lab4_xor_8bit:Swap1 A0

Layout Net:  avC40
L       1   of lab4_adder_top A5
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L      *1   of lab4_xor_8bit:Swap1 B0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 9)
Schematic Net:  net14
S       1   of lab4_adder_top A6
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S      *1   of lab4_xor_8bit:Swap1 A0

Layout Net:  avC34
L       1   of lab4_adder_top A6
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L      *1   of lab4_xor_8bit:Swap1 B0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 10)
Schematic Net:  net4
S       1   of lab4_adder_top A7
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S      *1   of lab4_or:Swap0 {A7 B7}
S       1   of lab4_inv:Swap1 A0
S      *1   of lab4_xor_8bit:Swap1 A0

Layout Net:  avC90
L       1   of lab4_adder_top A7
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L      *1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L      *1   of lab4_xor_8bit:Swap1 B0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 11)
Schematic Net:  net12
S       1   of lab4_adder_top B0
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S      *1   of lab4_xor_8bit:Swap1 B0

Layout Net:  avC37
L       1   of lab4_adder_top B0
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L      *1   of lab4_xor_8bit:Swap1 A0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 12)
Schematic Net:  net11
S       1   of lab4_adder_top B1
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S      *1   of lab4_xor_8bit:Swap1 B0

Layout Net:  avC44
L       1   of lab4_adder_top B1
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L      *1   of lab4_xor_8bit:Swap1 A0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 13)
Schematic Net:  net9
S       1   of lab4_adder_top B2
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S      *1   of lab4_xor_8bit:Swap1 B0

Layout Net:  avC53
L       1   of lab4_adder_top B2
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L      *1   of lab4_xor_8bit:Swap1 A0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 14)
Schematic Net:  net8
S       1   of lab4_adder_top B3
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S      *1   of lab4_or:Swap1 {A0 B0}
S      *1   of lab4_xor_8bit:Swap1 B0

Layout Net:  avC61
L       1   of lab4_adder_top B3
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L      *1   of lab4_or:Swap0 {A7 B7}
L      *1   of lab4_xor_8bit:Swap1 A0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 15)
Schematic Net:  net6
S       1   of lab4_adder_top B4
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S      *1   of lab4_xor_8bit:Swap1 B0

Layout Net:  avC70
L       1   of lab4_adder_top B4
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L      *1   of lab4_xor_8bit:Swap1 A0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 16)
Schematic Net:  net5
S       1   of lab4_adder_top B5
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S      *1   of lab4_xor_8bit:Swap1 B0

Layout Net:  avC74
L       1   of lab4_adder_top B5
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L      *1   of lab4_xor_8bit:Swap1 A0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 17)
Schematic Net:  net3
S       1   of lab4_adder_top B6
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S      *1   of lab4_xor_8bit:Swap1 B0

Layout Net:  avC80
L       1   of lab4_adder_top B6
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L      *1   of lab4_xor_8bit:Swap1 A0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 18)
Schematic Net:  net1
S       1   of lab4_adder_top B7
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S      *1   of lab4_or:Swap0 {A7 B7}
S      *1   of lab4_xor_8bit:Swap1 B0

Layout Net:  avC91
L       1   of lab4_adder_top B7
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L      *1   of lab4_or:Swap1 {A0 B0}
L      *1   of lab4_xor_8bit:Swap1 A0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 19)
Schematic Net:  net41
S       1   of lab4_8bit_reg:Swap1 IN0
S      *5   of lab4_8bit_tristatebuffer:Swap1 OUT0

Layout Net:  avC6_23
L       1   of lab4_8bit_reg:Swap1 IN0

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badmatch 20)
Schematic Net:  net53
S      *1   of lab4_or:Swap0 Y7
S       1   of lab4_8bit_tristatebuffer:Swap1 IN0

Layout Net:  avC54
L       1   of lab4_8bit_tristatebuffer:Swap1 IN0

=====================================================================[lab4_alu]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'avC26' of instance I4 probably should connect to net 
avC103 instead of net avC107.
This makes a better match between layout net avC103 and schematic net net61.

In the layout, terminal 'avC28' of instance I4 probably should connect to net 
avC107 instead of net avC103.
This makes a better match between layout net avC107 and schematic net net34.

In the layout, terminal 'avC10' of instance I##25 probably should connect to 
net avC33 instead of net avC37.
This makes a better match between layout net avC33 and schematic net net7.

In the layout, terminal 'avC10' of instance I##19 probably should connect to 
net avC56 instead of net avC53.
This makes a better match between layout net avC56 and schematic net net13.

In the layout, terminal 'avC10' of instance I##21 probably should connect to 
net avC49 instead of net avC70.
This makes a better match between layout net avC49 and schematic net net16.

In the layout, terminal 'avC10' of instance I##22 probably should connect to 
net avC40 instead of net avC74.
This makes a better match between layout net avC40 and schematic net net15.

In the layout, terminal 'avC10' of instance I##23 probably should connect to 
net avC34 instead of net avC80.
This makes a better match between layout net avC34 and schematic net net14.

In the layout, terminal 'avC10' of instance I##24 probably should connect to 
net avC90 instead of net avC91.
This makes a better match between layout net avC90 and schematic net net4.

In the layout, terminal 'avC9' of instance I##25 probably should connect to 
net avC37 instead of net avC33.
This makes a better match between layout net avC37 and schematic net net12.

In the layout, terminal 'avC9' of instance I##19 probably should connect to 
net avC53 instead of net avC56.
This makes a better match between layout net avC53 and schematic net net9.

In the layout, terminal 'avC9' of instance I##21 probably should connect to 
net avC70 instead of net avC49.
This makes a better match between layout net avC70 and schematic net net6.

In the layout, terminal 'avC9' of instance I##22 probably should connect to 
net avC74 instead of net avC40.
This makes a better match between layout net avC74 and schematic net net5.

In the layout, terminal 'avC9' of instance I##23 probably should connect to 
net avC80 instead of net avC34.
This makes a better match between layout net avC80 and schematic net net3.

In the layout, terminal 'avC9' of instance I##24 probably should connect to 
net avC91 instead of net avC90.
This makes a better match between layout net avC91 and schematic net net1.

In the layout, terminal 'avC10' of instance I##72 probably should connect to 
net avC6_23 instead of net avC64.
This makes a better match between layout net avC6_23 and schematic net net41.


=====================================================================[lab4_alu]
====== Open Internal Nets =====================================================
===============================================================================

These layout nets should connect together:
L        avC6_23
L        avC64

=====================================================================[lab4_alu]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?net34
S       1   of lab4_adder_top COUT
S       1   of lab4_xor_1bit B
S
S ?net61
S       1   of lab4_adder_top CINF
S       1   of lab4_xor_1bit A
S
S ?net41
S       1   of lab4_8bit_reg:Swap1 IN0
S       5   of lab4_8bit_tristatebuffer:Swap1 OUT0
S
S ?net53
S       1   of lab4_or:Swap0 Y7
S       1   of lab4_8bit_tristatebuffer:Swap1 IN0
S
S ?net12
S       1   of lab4_adder_top B0
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_xor_8bit:Swap1 B0
S
S ?net11
S       1   of lab4_adder_top B1
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_xor_8bit:Swap1 B0
S
S ?net9
S       1   of lab4_adder_top B2
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_xor_8bit:Swap1 B0
S
S ?net8
S       1   of lab4_adder_top B3
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_xor_8bit:Swap1 B0
S
S ?net6
S       1   of lab4_adder_top B4
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_xor_8bit:Swap1 B0
S
S ?net5
S       1   of lab4_adder_top B5
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_xor_8bit:Swap1 B0
S
S ?net3
S       1   of lab4_adder_top B6
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_xor_8bit:Swap1 B0
S
S ?net1
S       1   of lab4_adder_top B7
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap0 {A7 B7}
S       1   of lab4_xor_8bit:Swap1 B0
S
S ?net7
S       1   of lab4_adder_top A0
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S       1   of lab4_xor_8bit:Swap1 A0
S
S ?net10
S       1   of lab4_adder_top A1
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S       1   of lab4_xor_8bit:Swap1 A0
S
S ?net13
S       1   of lab4_adder_top A2
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S       1   of lab4_xor_8bit:Swap1 A0
S
S ?net2
S       1   of lab4_adder_top A3
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S       1   of lab4_xor_8bit:Swap1 A0
S
S ?net16
S       1   of lab4_adder_top A4
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S       1   of lab4_xor_8bit:Swap1 A0
S
S ?net15
S       1   of lab4_adder_top A5
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S       1   of lab4_xor_8bit:Swap1 A0
S
S ?net14
S       1   of lab4_adder_top A6
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap1 {A0 B0}
S       1   of lab4_inv:Swap1 A0
S       1   of lab4_xor_8bit:Swap1 A0
S
S ?net4
S       1   of lab4_adder_top A7
S       1   of lab4_8bit_reg:Swap1 OUT0
S       1   of lab4_and:Swap1 {B0 A0}
S       1   of lab4_or:Swap0 {A7 B7}
S       1   of lab4_inv:Swap1 A0
S       1   of lab4_xor_8bit:Swap1 A0

=====================================================================[lab4_alu]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avC6_23
L       1   of lab4_8bit_reg:Swap1 IN0
L
L ?avC54
L       1   of lab4_8bit_tristatebuffer:Swap1 IN0
L
L ?avC64
L       5   of lab4_8bit_tristatebuffer:Swap1 OUT0
L
L ?avC103
L       1   of lab4_adder_top COUT
L       1   of lab4_xor_1bit A
L
L ?avC107
L       1   of lab4_adder_top CINF
L       1   of lab4_xor_1bit B
L
L ?avC37
L       1   of lab4_adder_top B0
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_xor_8bit:Swap1 A0
L
L ?avC44
L       1   of lab4_adder_top B1
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_xor_8bit:Swap1 A0
L
L ?avC53
L       1   of lab4_adder_top B2
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_xor_8bit:Swap1 A0
L
L ?avC61
L       1   of lab4_adder_top B3
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap0 {A7 B7}
L       1   of lab4_xor_8bit:Swap1 A0
L
L ?avC70
L       1   of lab4_adder_top B4
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_xor_8bit:Swap1 A0
L
L ?avC74
L       1   of lab4_adder_top B5
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_xor_8bit:Swap1 A0
L
L ?avC80
L       1   of lab4_adder_top B6
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_xor_8bit:Swap1 A0
L
L ?avC91
L       1   of lab4_adder_top B7
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_xor_8bit:Swap1 A0
L
L ?avC33
L       1   of lab4_adder_top A0
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L       1   of lab4_xor_8bit:Swap1 B0
L
L ?avC39
L       1   of lab4_adder_top A1
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L       1   of lab4_xor_8bit:Swap1 B0
L
L ?avC56
L       1   of lab4_adder_top A2
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L       1   of lab4_xor_8bit:Swap1 B0
L
L ?avC59
L       1   of lab4_adder_top A3
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap0 {A7 B7}
L       1   of lab4_inv:Swap1 A0
L       1   of lab4_xor_8bit:Swap1 B0
L
L ?avC49
L       1   of lab4_adder_top A4
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L       1   of lab4_xor_8bit:Swap1 B0
L
L ?avC40
L       1   of lab4_adder_top A5
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L       1   of lab4_xor_8bit:Swap1 B0
L
L ?avC34
L       1   of lab4_adder_top A6
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L       1   of lab4_xor_8bit:Swap1 B0
L
L ?avC90
L       1   of lab4_adder_top A7
L       1   of lab4_8bit_reg:Swap1 OUT0
L       1   of lab4_and:Swap1 {B0 A0}
L       1   of lab4_or:Swap1 {A0 B0}
L       1   of lab4_inv:Swap1 A0
L       1   of lab4_xor_8bit:Swap1 B0

=====================================================================[lab4_alu]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: I4  lab4_adder_top
Layout Instance:    I4  lab4_adder_top

Pin        SchNet                      : LayNet
---        ------                      : ------
COUT       net34                       : net61
CINF       net61                       : net34

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 2)
Schematic Instance: I##65  lab4_or:Swap0
Layout Instance:    I##35  lab4_or:Swap0

Pin        SchNet                      : LayNet
---        ------                      : ------
A7         net4                        : net2
B7         net1                        : net8

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 3)
Schematic Instance: I##85  lab4_8bit_tristatebuffer:Swap1
Layout Instance:    I##72  lab4_8bit_tristatebuffer:Swap1

Pin        SchNet                      : LayNet
---        ------                      : ------
OUT0       net41                       : ?avC64

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 4)
Schematic Instance: I##105  lab4_8bit_tristatebuffer:Swap1
Layout Instance:    I##79  lab4_8bit_tristatebuffer:Swap1

Pin        SchNet                      : LayNet
---        ------                      : ------
OUT0       net39                       : net35

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 5)
Schematic Instance: I##109  lab4_8bit_tristatebuffer:Swap1
Layout Instance:    I##75  lab4_8bit_tristatebuffer:Swap1

Pin        SchNet                      : LayNet
---        ------                      : ------
OUT0       net35                       : net39

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 6)
Schematic Instance: I##120  lab4_xor_8bit:Swap1
Layout Instance:    I##25  lab4_xor_8bit:Swap1

Pin        SchNet                      : LayNet
---        ------                      : ------
B0         net12                       : net7
A0         net7                        : net12

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 7)
Schematic Instance: I##122  lab4_xor_8bit:Swap1
Layout Instance:    I##19  lab4_xor_8bit:Swap1

Pin        SchNet                      : LayNet
---        ------                      : ------
B0         net9                        : net13
A0         net13                       : net9

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 8)
Schematic Instance: I##124  lab4_xor_8bit:Swap1
Layout Instance:    I##21  lab4_xor_8bit:Swap1

Pin        SchNet                      : LayNet
---        ------                      : ------
B0         net6                        : net16
A0         net16                       : net6

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 9)
Schematic Instance: I##125  lab4_xor_8bit:Swap1
Layout Instance:    I##22  lab4_xor_8bit:Swap1

Pin        SchNet                      : LayNet
---        ------                      : ------
B0         net5                        : net15
A0         net15                       : net5

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badcon 10)
Schematic Instance: I##126  lab4_xor_8bit:Swap1
Layout Instance:    I##23  lab4_xor_8bit:Swap1

Pin        SchNet                      : LayNet
---        ------                      : ------
B0         net3                        : net14
A0         net14                       : net3

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badcon 11)
Schematic Instance: I##127  lab4_xor_8bit:Swap1
Layout Instance:    I##24  lab4_xor_8bit:Swap1

Pin        SchNet                      : LayNet
---        ------                      : ------
B0         net1                        : net4
A0         net4                        : net1

=====================================================================[lab4_alu]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: I##61  lab4_or:Swap1

S Pin        Net
S ---        ---
S From-Swap0 N##147
S Y0         net57
S A0         net2
S B0         net8

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 2)
Schematic Instance: I##76  lab4_8bit_tristatebuffer:Swap1

S Pin        Net
S ---        ---
S From-Swap0 N##160
S IN0        net76
S OUT0       net41

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 3)
Schematic Instance: I##94  lab4_8bit_tristatebuffer:Swap1

S Pin        Net
S ---        ---
S From-Swap0 N##176
S IN0        net23
S OUT0       net41

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 4)
Schematic Instance: I##103  lab4_8bit_tristatebuffer:Swap1

S Pin        Net
S ---        ---
S From-Swap0 N##184
S IN0        net59
S OUT0       net41

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 5)
Schematic Instance: I##112  lab4_8bit_tristatebuffer:Swap1

S Pin        Net
S ---        ---
S From-Swap0 N##192
S IN0        net68
S OUT0       net41

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 6)
Schematic Instance: I##121  lab4_xor_8bit:Swap1

S Pin        Net
S ---        ---
S From-Swap0 N##200
S B0         net11
S A0         net10
S OUT0       net76

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 7)
Schematic Instance: I##123  lab4_xor_8bit:Swap1

S Pin        Net
S ---        ---
S From-Swap0 N##202
S B0         net8
S A0         net2
S OUT0       net74

=====================================================================[lab4_alu]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    I##20  lab4_xor_8bit:Swap1

L Pin        Net
L ---        ---
L From-Swap0 N##200
L avC9       net2
L avC10      net8
L avC11      net74

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 2)
Layout Instance:    I##26  lab4_xor_8bit:Swap1

L Pin        Net
L ---        ---
L From-Swap0 N##202
L avC9       net10
L avC10      net11
L avC11      net76

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 3)
Layout Instance:    I##32  lab4_or:Swap1

L Pin        Net
L ---        ---
L From-Swap0 N##147
L avC11      net57
L avC10      net4
L avC9       net1

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 4)
Layout Instance:    I##63  lab4_8bit_tristatebuffer:Swap1

L Pin        Net
L ---        ---
L From-Swap0 N##176
L avC11      net23
L avC10      ?avC64

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 5)
Layout Instance:    I##81  lab4_8bit_tristatebuffer:Swap1

L Pin        Net
L ---        ---
L From-Swap0 N##184
L avC11      net59
L avC10      ?avC64

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 6)
Layout Instance:    I##90  lab4_8bit_tristatebuffer:Swap1

L Pin        Net
L ---        ---
L From-Swap0 N##160
L avC11      net76
L avC10      ?avC64

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 7)
Layout Instance:    I##99  lab4_8bit_tristatebuffer:Swap1

L Pin        Net
L ---        ---
L From-Swap0 N##192
L avC11      net68
L avC10      ?avC64

=====================================================================[lab4_alu]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 20         20        Bad Matched Nets
 -          15        Suggested Terminal Rewire
 -          1         Unmatched Internal Nets
 -          1         Open Internal Nets
 11         11        Matched Instances with Bad Net Connections
 7          7         Unmatched Instances
 -          1         Open Instance Connections

