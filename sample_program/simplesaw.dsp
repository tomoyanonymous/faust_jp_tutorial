import("stdfaust.lib");
freq = hslider("freq",440,1,20000,0.01);
periodinsamps(f) = int(ma.SR/f);
saw(f) = (+(1) ~ %(periodinsamps(f)) ) : /(periodinsamps(f)) : *(2*ma.PI);

process = saw(freq);
