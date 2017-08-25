import("stdfaust.lib");
process = par(i,8,fi.resonbp((i+1)*1000,1,1));
