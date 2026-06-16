v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 55 -760 665 -480 {flags=graph
y1=0.97
y2=0.98
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3
x2=9.69897
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/sp_analog_pad.raw
sim_type=sp
autoload=1
color=4
node=s_1_1}
B 2 1225 -740 1835 -460 {flags=graph
y1=-180
y2=-170
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3
x2=9.69897
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/sp_analog_pad.raw
sim_type=sp
autoload=1
color=4
node=ph(s_1_1)}
B 2 625 -1050 1235 -770 {flags=graph
y1=1e-35
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3
x2=9.69897
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
sim_type=sp
autoload=1
color=4
node=s_2_2}
P 4 4 615 -275 625 -280 625 -270 615 -275 {fill=1}
P 4 3 625 -275 650 -275 650 -220 {}
N 680 -300 680 -240 {lab=Vin}
N 680 -180 680 -140 {lab=0}
N 400 -230 400 -180 {lab=0}
N 360 -230 360 -180 {lab=0}
N 360 -420 360 -370 {lab=DVDD}
N 400 -420 400 -370 {lab=VDD}
N 160 -330 160 -280 {lab=VDD}
N 80 -330 80 -280 {lab=DVDD}
N 160 -220 160 -170 {lab=0}
N 80 -220 80 -170 {lab=0}
N 520 -300 680 -300 {lab=Vin}
N 1040 -640 1040 -580 {lab=#net1}
N 1040 -640 1090 -640 {lab=#net1}
N 1160 -640 1160 -620 {lab=#net1}
N 1090 -640 1160 -640 {lab=#net1}
N 1160 -560 1160 -510 {lab=0}
N 1040 -490 1160 -490 {lab=0}
N 1040 -510 1040 -490 {lab=0}
N 1160 -510 1160 -490 {lab=0}
N 1040 -520 1040 -510 {lab=0}
N 1040 -490 1040 -480 {lab=0}
C {/foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_io/xschem/gf180mcu_fd_io__asig_5p0.sym} 370 -300 0 0 {name=x1}
C {vsource.sym} 680 -210 0 0 {name=V1 value="dc 0 ac 1 portnum 1 z0 50"
}
C {vsource.sym} 160 -250 0 0 {name=V_VDD value=5 savecurrent=false}
C {vsource.sym} 80 -250 0 0 {name=V_DVDD value=5 savecurrent=false}
C {lab_wire.sym} 400 -420 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 360 -420 0 0 {name=p2 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 80 -330 0 0 {name=p5 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 160 -330 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {code_shown.sym} 730 -570 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
sp lin 100 1e3 5e9 0
write sp_analog_pad.raw
.endc
" }
C {launcher.sym} 790 -635 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/sp_analog_pad.raw sp"}
C {code_shown.sym} 730 -385 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_io/spice/gf180mcu_fd_io.spice
*.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_io/spice/gf180mcu_ef_io.spice
"}
C {lab_wire.sym} 680 -300 0 1 {name=p4 sig_type=std_logic lab=Vin}
C {title.sym} 180 -40 0 0 {name=l4 author="Ahmed Elnaggar/A38-SilentOwl"}
C {gnd.sym} 680 -140 0 0 {name=l1 lab=0}
C {gnd.sym} 400 -180 0 0 {name=l2 lab=0}
C {gnd.sym} 160 -170 0 0 {name=l3 lab=0}
C {gnd.sym} 360 -180 0 0 {name=l5 lab=0}
C {gnd.sym} 80 -170 0 0 {name=l6 lab=0}
C {vsource.sym} 1040 -550 0 0 {name=V_Dummy value="dc 0 ac 1 portnum 2 z0 50"
}
C {gnd.sym} 1040 -480 0 0 {name=l7 lab=0}
C {res.sym} 1160 -590 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
