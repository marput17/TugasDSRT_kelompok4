v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 -500 -110 -490 {lab=0}
N -40 -500 -40 -490 {lab=0}
N 40 -500 40 -490 {lab=0}
N 110 -500 110 -490 {lab=0}
N -110 -570 -110 -560 {lab=VDD}
N -40 -570 -40 -560 {lab=S}
N 40 -570 40 -560 {lab=W0}
N 110 -570 110 -560 {lab=W1}
N 210 -320 250 -320 {lab=#net1}
N 250 -340 250 -320 {lab=#net1}
N 250 -340 310 -340 {lab=#net1}
N 610 -450 660 -450 {lab=#net2}
N 660 -450 660 -400 {lab=#net2}
N 660 -380 660 -320 {lab=#net3}
N 610 -320 660 -320 {lab=#net3}
N -130 -370 -90 -370 {lab=S}
N -90 -370 -90 -340 {lab=S}
N -90 -420 -90 -370 {lab=S}
N -90 -420 250 -420 {lab=S}
N 250 -470 250 -420 {lab=S}
N 250 -470 310 -470 {lab=S}
N 290 -320 290 -290 {lab=W0}
N 290 -320 310 -320 {lab=W0}
N 600 -380 600 -360 {lab=VDD}
N 600 -360 610 -360 {lab=VDD}
N 610 -360 610 -340 {lab=VDD}
N 220 -370 220 -340 {lab=VDD}
N 210 -340 220 -340 {lab=VDD}
N 970 -430 970 -400 {lab=VDD}
N 960 -400 970 -400 {lab=VDD}
N 210 -300 210 -280 {lab=0}
N 610 -300 610 -280 {lab=0}
N 960 -360 960 -320 {lab=0}
N 610 -430 610 -420 {lab=0}
N 620 -490 620 -470 {lab=VDD}
N 610 -470 620 -470 {lab=VDD}
N 960 -380 1030 -380 {lab=OUT}
N 290 -450 310 -450 {lab=W1}
C {OR.sym} 810 -380 0 0 {name=x2}
C {NOT.sym} 60 -320 0 0 {name=x4}
C {vsource.sym} -110 -530 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -40 -530 0 0 {name=V2 value=PULSE(0 1.8 0 1n 1n 40n 80n) savecurrent=false}
C {vsource.sym} 40 -530 0 0 {name=V3 value=PULSE (0 1.8 0 1n 1n 10n 20n) savecurrent=false}
C {vsource.sym} 110 -530 0 0 {name=V4 value=PULSE(0 1.8 0 1n 1n 20n 40n) savecurrent=false}
C {gnd.sym} -110 -490 0 0 {name=l5 lab=0}
C {gnd.sym} -40 -490 0 0 {name=l6 lab=0}
C {gnd.sym} 40 -490 0 0 {name=l7 lab=0}
C {gnd.sym} 110 -490 0 0 {name=l8 lab=0}
C {lab_pin.sym} -110 -570 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -40 -570 1 0 {name=p9 sig_type=std_logic lab=S}
C {lab_pin.sym} 40 -570 1 0 {name=p10 sig_type=std_logic lab=W0}
C {lab_pin.sym} 110 -570 1 0 {name=p11 sig_type=std_logic lab=W1}
C {lab_pin.sym} -130 -370 0 0 {name=p1 sig_type=std_logic lab=S}
C {lab_pin.sym} 290 -290 0 0 {name=p2 sig_type=std_logic lab=W0}
C {lab_pin.sym} 290 -450 0 0 {name=p3 sig_type=std_logic lab=W1}
C {lab_pin.sym} 620 -490 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 600 -380 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 -370 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 970 -430 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {gnd.sym} 210 -280 0 0 {name=l1 lab=0}
C {gnd.sym} 610 -280 0 0 {name=l2 lab=0}
C {gnd.sym} 960 -330 0 0 {name=l3 lab=0}
C {gnd.sym} 610 -420 0 0 {name=l4 lab=0}
C {code.sym} 360 -650 0 0 {name=s1 
only_toplevel=false 
value="
.include /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.train 0.1n 120n

.control
  run
  set pswinwidth=2
  plot v(S) v(W0) v(W1) v(Y)
.endc"}
C {lab_pin.sym} 1030 -380 2 0 {name=p12 sig_type=std_logic lab=OUT}
C {AND2.sym} 460 -450 0 0 {name=x1}
C {AND2.sym} 460 -320 0 0 {name=x3}
