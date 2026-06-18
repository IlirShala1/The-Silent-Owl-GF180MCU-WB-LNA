v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -360 300 -330 {
lab=GND}
N 720 -250 740 -250 {
lab=GND}
N 300 -330 300 -230 {
lab=GND}
N 300 -450 300 -420 {
lab=vdcbias}
N 300 -310 350 -310 {
lab=GND}
N 120 -430 160 -430 {
lab=in}
N 120 -370 160 -370 {
lab=GND}
N 120 -280 160 -280 {
lab=out}
N 120 -220 160 -220 {
lab=GND}
N 720 -360 720 -280 {
lab=d}
N 720 -450 720 -420 {
lab=vdcbias}
N 410 -310 440 -310 {
lab=g}
N 620 -200 640 -200 {
lab=s}
N 530 -200 560 -200 {
lab=in}
N 720 -320 760 -320 {
lab=d}
N 820 -320 860 -320 {
lab=out}
N 720 -220 720 -210 {
lab=s}
N 720 -210 720 -180 {
lab=s}
N 660 -250 680 -250 {
lab=g}
N 720 -120 720 -90 {
lab=GND}
N 640 -200 720 -200 {
lab=s}
C {symbols/nfet_03v3.sym} 700 -250 0 0 {name=M1
L=\{L\}
W=\{W\}
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
C {vsource.sym} 380 -310 1 0 {name=VGG value=\{VBIAS\} savecurrent=false}
C {gnd.sym} 720 -90 0 0 {name=l1 lab=GND}
C {code_shown.sym} 260 -80 0 0 {name=s1 only_toplevel=false value="
.include ../gf180mcu_pdk.inc
.include ../nmos_nfmin_cg.spice"}
C {vsource.sym} 300 -390 0 0 {name=VDD value=\{VDS\} savecurrent=false}
C {ind.sym} 720 -390 2 0 {name=LDD
m=1
value=1u
footprint=1206
device=inductor}
C {capa.sym} 790 -320 3 0 {name=COUT
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 720 -310 0 0 {name=p3 sig_type=std_logic lab=d}
C {lab_pin.sym} 160 -430 2 0 {name=p5 sig_type=std_logic lab=in}
C {lab_pin.sym} 160 -370 2 0 {name=p6 sig_type=std_logic lab=GND

}
C {lab_pin.sym} 160 -280 2 0 {name=p7 sig_type=std_logic lab=out}
C {lab_pin.sym} 160 -220 2 0 {name=p8 sig_type=std_logic lab=GND}
C {capa.sym} 590 -200 3 0 {name=CIN
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 300 -230 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 300 -450 0 0 {name=p10 sig_type=std_logic lab=vdcbias
}
C {lab_pin.sym} 660 -250 0 0 {name=p4 sig_type=std_logic lab=g}
C {lab_pin.sym} 440 -310 2 0 {name=p9 sig_type=std_logic lab=g}
C {lab_pin.sym} 720 -450 0 0 {name=p11 sig_type=std_logic lab=vdcbias
}
C {lab_pin.sym} 530 -200 0 0 {name=p13 sig_type=std_logic lab=in}
C {lab_pin.sym} 860 -320 2 0 {name=p14 sig_type=std_logic lab=out}
C {port_diff.sym} 120 -400 0 0 {name=V1 portnum=1 Z0=50 DCval=0 ACmag=1 ACphase=0 TRANval=""}
C {port_diff.sym} 120 -250 0 0 {name=V2 portnum=2 Z0=50 DCval=0 ACmag=1 ACphase=0 TRANval=""}
C {lab_pin.sym} 720 -190 2 0 {name=p1 sig_type=std_logic lab=s}
C {lab_pin.sym} 740 -250 2 0 {name=p2 sig_type=std_logic lab=GND}
C {ind.sym} 720 -150 2 0 {name=LSRC
m=1
value=10u
footprint=1206
device=inductor}
