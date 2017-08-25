import("stdfaust.lib");
freq = hslider("freq",440,1,20000,0.01);
periodinsamps = int(ma.SR/freq); //ma.SRはサンプリングレートを呼び出してくれる

process = +(1) ~ %(periodinsamps);
