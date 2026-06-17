v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 55 -760 665 -480 {flags=graph
y1=0
y2=4.6e+11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4
x2=9.30103
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=i(e.x1.x1.ec_moscap)
color=4
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/ac_analog_pad.raw
sim_type=ac
autoload=1}
P 4 4 615 -265 625 -270 625 -260 615 -265 {fill=1}
P 4 3 625 -265 650 -265 650 -210 {}
N 680 -300 680 -240 {lab=#net1}
N 680 -180 680 -140 {lab=0}
N 395 -230 395 -180 {lab=0}
N 355 -230 355 -180 {lab=0}
N 355 -420 355 -370 {lab=DVDD}
N 395 -420 395 -370 {lab=VDD}
N 160 -330 160 -280 {lab=VDD}
N 80 -330 80 -280 {lab=DVDD}
N 160 -220 160 -170 {lab=0}
N 80 -220 80 -170 {lab=0}
N 550 -300 600 -300 {lab=#net2}
N 540 -300 550 -300 {lab=#net2}
N 520 -300 540 -300 {lab=#net2}
N 515 -300 520 -300 {lab=#net2}
N 660 -300 680 -300 {lab=#net1}
C {/foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_io/xschem/gf180mcu_fd_io__asig_5p0.sym} 365 -300 0 0 {name=x1}
C {vsource.sym} 680 -210 0 0 {name=V1 value="dc 0 ac 1"

*name=V1 value="dc 0 ac 1 portnum 1 z0 50"
}
C {vsource.sym} 160 -250 0 0 {name=V_VDD value=5 savecurrent=false}
C {vsource.sym} 80 -250 0 0 {name=V_DVDD value=5 savecurrent=false}
C {lab_wire.sym} 395 -420 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 355 -420 0 0 {name=p2 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 80 -330 0 0 {name=p5 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 160 -330 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {code_shown.sym} 730 -570 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
ac dec 1000 10e3 2e9 
*sp lin 100 1e3 2e9 0
write ac_analog_pad.raw
.endc
" }
C {launcher.sym} 790 -635 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ac_analog_pad.raw ac"}
C {code_shown.sym} 730 -385 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_io/spice/gf180mcu_fd_io.spice
"}
C {lab_wire.sym} 560 -300 0 1 {name=p4 sig_type=std_logic lab=Vin}
C {title.sym} 180 -40 0 0 {name=l4 author="Ahmed Elnaggar/A38-SilentOwl"}
C {gnd.sym} 680 -140 0 0 {name=l1 lab=0}
C {gnd.sym} 395 -180 0 0 {name=l2 lab=0}
C {gnd.sym} 160 -170 0 0 {name=l3 lab=0}
C {gnd.sym} 355 -180 0 0 {name=l5 lab=0}
C {gnd.sym} 80 -170 0 0 {name=l6 lab=0}
C {res.sym} 630 -300 3 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
