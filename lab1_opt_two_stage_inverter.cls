*******************************************************************************
****** lab1_opt_two_stage_inverter schematic ece4740  <vs>  lab1_opt_two_stage_inverter layout ece4740
*******************************************************************************

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(nmos1v) MOS                                      2       5*          2       0*
(pmos1v) MOS                                      2       5*          2       0*
(-, nmos1v:ParMos2#1) MosBlk                      -       -           -       1*
(-, pmos1v:ParMos2#1) MosBlk                      -       -           -       1*

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(nmos1v) MOS                                      2       0*          2       0*
(pmos1v) MOS                                      2       0*          2       0*
(-, nmos1v:ParMos2#1) MosBlk                      -       1*          -       1*
(-, pmos1v:ParMos2#1) MosBlk                      -       1*          -       1*
                                             ------  ------      ------  ------
Total                                             4       2           4       2

Match Statistics for Nets                         5       4           1       0

==================================================[lab1_opt_two_stage_inverter]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  vdd!
S      *2   of pmos1v {D S}
S      *2   of pmos1v B

Layout Net:  vdd!
L      *1   of pmos1v:ParMos2#1 ?{OUT OUT2}
L      *1   of pmos1v:ParMos2#1 ?TERM4

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 2)
Schematic Net:  gnd!
S      *2   of nmos1v {D S}
S      *2   of nmos1v B

Layout Net:  gnd!
L      *1   of nmos1v:ParMos2#1 ?{OUT OUT2}
L      *1   of nmos1v:ParMos2#1 ?TERM4

==================================================[lab1_opt_two_stage_inverter]
====== Unmatched Pins =========================================================
===============================================================================

S ?Y

==================================================[lab1_opt_two_stage_inverter]
====== Unbound Pin ============================================================
===============================================================================

S A
S Y

==================================================[lab1_opt_two_stage_inverter]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net1
S      *1   of nmos1v {D S}
S      *1   of nmos1v G
S      *1   of pmos1v {D S}
S      *1   of pmos1v G

Layout Net:  avC3
L      *1   of nmos1v:ParMos2#1 ?{OUT OUT2}
L      *1   of nmos1v:ParMos2#1 ?{IN1 IN2}
L      *1   of pmos1v:ParMos2#1 ?{OUT OUT2}
L      *1   of pmos1v:ParMos2#1 ?{IN1 IN2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  A
S      *1   of nmos1v G
S      *1   of pmos1v G

Layout Net:  avC2_3
L      *1   of nmos1v:ParMos2#1 ?{IN1 IN2}
L      *1   of pmos1v:ParMos2#1 ?{IN1 IN2}

==================================================[lab1_opt_two_stage_inverter]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?Y
S       1   of nmos1v {D S}
S       1   of pmos1v {D S}
S
S ?gnd!
S       2   of nmos1v {D S}
S       2   of nmos1v B
S
S ?A
S       1   of nmos1v G
S       1   of pmos1v G
S
S ?vdd!
S       2   of pmos1v {D S}
S       2   of pmos1v B
S
S ?net1
S       1   of nmos1v {D S}
S       1   of nmos1v G
S       1   of pmos1v {D S}
S       1   of pmos1v G

==================================================[lab1_opt_two_stage_inverter]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?gnd!
L       1   of nmos1v:ParMos2#1 ?{OUT OUT2}
L       1   of nmos1v:ParMos2#1 ?TERM4
L
L ?avC2_3
L       1   of nmos1v:ParMos2#1 ?{IN1 IN2}
L       1   of pmos1v:ParMos2#1 ?{IN1 IN2}
L
L ?vdd!
L       1   of pmos1v:ParMos2#1 ?{OUT OUT2}
L       1   of pmos1v:ParMos2#1 ?TERM4
L
L ?avC3
L       1   of nmos1v:ParMos2#1 ?{OUT OUT2}
L       1   of nmos1v:ParMos2#1 ?{IN1 IN2}
L       1   of pmos1v:ParMos2#1 ?{OUT OUT2}
L       1   of pmos1v:ParMos2#1 ?{IN1 IN2}

==================================================[lab1_opt_two_stage_inverter]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: I1/NM0  nmos1v

S Pin        Net
S ---        ---
S D          ?Y
S G          net1
S S          gnd!
S B          gnd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 2)
Schematic Instance: I1/PM0  pmos1v

S Pin        Net
S ---        ---
S D          ?Y
S G          net1
S S          vdd!
S B          vdd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 3)
Schematic Instance: I0/NM0  nmos1v

S Pin        Net
S ---        ---
S D          net1
S G          A
S S          gnd!
S B          gnd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 4)
Schematic Instance: I0/PM0  pmos1v

S Pin        Net
S ---        ---
S D          net1
S G          A
S S          vdd!
S B          vdd!

==================================================[lab1_opt_two_stage_inverter]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    I##11  nmos1v:ParMos2#1

L Pin        Net
L ---        ---
L OUT        net1
L OUT2       gnd!
L TERM4      gnd!
L IN1        A
L IN2        net1

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 2)
Layout Instance:    I##12  pmos1v:ParMos2#1

L Pin        Net
L ---        ---
L OUT        net1
L OUT2       vdd!
L TERM4      vdd!
L IN1        A
L IN2        net1

==================================================[lab1_opt_two_stage_inverter]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 1          -         Unmatched Pins
 2          2         Bad Initial Net Bindings
 2          2         Bad Matched Nets
 4          2         Unmatched Instances
 2          -         Unbound Pin

