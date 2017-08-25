import("stdfaust.lib");
comp(gain,input) = input*(1 - gain* (input:abs:fi.lowpass(1,10)));
process = comp(1); //引数を最後のinputは代入しない
