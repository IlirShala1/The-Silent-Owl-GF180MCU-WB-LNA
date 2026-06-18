v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -310 290 -280 {
lab=GND}
N 290 -280 290 -180 {
lab=GND}
N 290 -620 290 -590 {
lab=vdd}
N 290 -230 340 -230 {
lab=GND}
N 110 -380 150 -380 {
lab=in}
N 110 -320 150 -320 {
lab=GND}
N 110 -230 150 -230 {
lab=out}
N 110 -170 150 -170 {
lab=GND}
N 400 -230 430 -230 {
lab=ng}
N 570 -230 600 -230 {
lab=vinbias}
N 660 -230 700 -230 {
lab=x}
N 660 -310 680 -310 {
lab=x}
N 680 -310 680 -230 {
lab=x}
N 570 -310 600 -310 {
lab=in}
N 1030 -240 1070 -240 {
lab=out}
N 930 -240 970 -240 {
lab=y}
N 820 -340 870 -340 {
lab=y}
N 870 -340 870 -160 {
lab=y}
N 820 -160 870 -160 {
lab=y}
N 720 -160 760 -160 {
lab=x}
N 720 -340 720 -160 {
lab=x}
N 720 -340 760 -340 {
lab=x}
N 790 -120 790 -80 {
lab=pg}
N 790 -420 790 -380 {
lab=ng}
N 790 -200 790 -160 {
lab=vdd}
N 790 -340 790 -300 {
lab=GND}
N 400 -320 430 -320 {
lab=pg}
N 310 -320 340 -320 {
lab=GND}
N 290 -320 310 -320 {
lab=GND}
N 290 -410 290 -310 {
lab=GND}
N 290 -530 290 -410 {
lab=GND}
N 400 -410 430 -410 {
lab=vinbias}
N 310 -410 340 -410 {
lab=GND}
N 290 -410 310 -410 {
lab=GND}
N 700 -230 720 -230 {
lab=x}
N 400 -510 430 -510 {
lab=voutbias}
N 310 -510 340 -510 {
lab=GND}
N 290 -510 310 -510 {
lab=GND}
N 930 -160 930 -130 {
lab=voutbias}
N 870 -240 930 -240 {
lab=y}
N 930 -240 930 -220 {
lab=y}
C {vsource.sym} 370 -230 1 0 {name=VGN_SRC value=\{VGN\} savecurrent=false}
C {code_shown.sym} 310 -70 0 0 {name=s1 only_toplevel=false value="
.include ../gf180mcu_pdk.inc
.include ../cmos_tg_cg_nfmin.spice"}
C {vsource.sym} 290 -560 0 0 {name=VDD_SRC value=\{VDD\} savecurrent=false}
C {capa.sym} 1000 -240 3 0 {name=COUT
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 870 -300 2 0 {name=p3 sig_type=std_logic lab=y}
C {lab_pin.sym} 150 -380 2 0 {name=p5 sig_type=std_logic lab=in}
C {lab_pin.sym} 150 -320 2 0 {name=p6 sig_type=std_logic lab=GND

}
C {lab_pin.sym} 150 -230 2 0 {name=p7 sig_type=std_logic lab=out}
C {lab_pin.sym} 150 -170 2 0 {name=p8 sig_type=std_logic lab=GND}
C {capa.sym} 630 -310 3 0 {name=CIN
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 290 -180 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 290 -620 0 0 {name=p10 sig_type=std_logic lab=vdd

}
C {lab_pin.sym} 430 -230 2 0 {name=p9 sig_type=std_logic lab=ng}
C {lab_pin.sym} 570 -230 0 0 {name=p12 sig_type=std_logic lab=vinbias}
C {lab_pin.sym} 570 -310 0 0 {name=p13 sig_type=std_logic lab=in}
C {lab_pin.sym} 1070 -240 2 0 {name=p14 sig_type=std_logic lab=out}
C {symbols/pfet_03v3.sym} 790 -140 3 0 {name=M2
L=\{P_L\}
W=\{P_W\}
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 790 -360 1 0 {name=M1
L=\{N_L\}
W=\{N_W\}
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gnd.sym} 730 -70 0 0 {name=l2 lab=GND}
C {port_diff.sym} 110 -350 0 0 {name=V1 portnum=1 Z0=50 DCval=0 ACmag=1 ACphase=0 TRANval=""}
C {port_diff.sym} 110 -200 0 0 {name=V2 portnum=2 Z0=50 DCval=0 ACmag=1 ACphase=0 TRANval=""}
C {ind.sym} 630 -230 1 0 {name=LIN
m=1
value=10u
footprint=1206
device=inductor}
C {lab_pin.sym} 720 -320 0 0 {name=p1 sig_type=std_logic lab=x}
C {lab_pin.sym} 790 -420 0 0 {name=p2 sig_type=std_logic lab=ng}
C {lab_pin.sym} 790 -80 0 0 {name=p15 sig_type=std_logic lab=pg
}
C {lab_pin.sym} 790 -200 0 0 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 790 -300 0 0 {name=p17 sig_type=std_logic lab=GND}
C {vsource.sym} 370 -320 1 0 {name=VGP_SRC value=\{VGP\} savecurrent=false}
C {lab_pin.sym} 430 -320 2 0 {name=p18 sig_type=std_logic lab=pg}
C {vsource.sym} 370 -410 1 0 {name=VINBIAS value=\{VINCM\} savecurrent=false}
C {lab_pin.sym} 430 -410 2 0 {name=p19 sig_type=std_logic lab=vinbias}
C {vsource.sym} 370 -510 1 0 {name=VOUTBIAS value=\{VOUTCM\} savecurrent=false}
C {lab_pin.sym} 430 -510 2 0 {name=p4 sig_type=std_logic lab=voutbias}
C {lab_pin.sym} 930 -130 3 0 {name=p20 sig_type=std_logic lab=voutbias}
C {ind.sym} 930 -190 2 0 {name=LOUT
m=1
value=10u
footprint=1206
device=inductor}
