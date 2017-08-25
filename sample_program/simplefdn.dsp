import("stdfaust.lib");
//8*8matrix
primes = 1,2,3,5,7,11,13,17;
dtime = hslider("delaytime[unit:ms]",20,10,200,0.001)*ma.SR/1000;
delay_bus = par(i,8,de.fdelay(2*ma.SR,dtime+ba.take(i+1,primes)));

fbgain = hslider("feedback_gain[unit:dB]",-7,-70,-6,0.01):ba.db2linear;
gain_bus = par(i,8,*(fbgain));

matrix = ro.hadamard(8):par(i,8,/(sqrt(2)));
merge=si.bus(8):>si.bus(2):(/(4),/(4));

process = (si.bus(2) <: si.bus(8)) : (si.bus(16):>si.bus(8):matrix)~(delay_bus:gain_bus) :(merge);
