W = [1 2 2] %bobot awal
Pa = [-3 -1.5 -1.5]' %target T=1

B = 3
%for i-0 : 5
    %tes untuk target T=1
    %hardlimit digunakan untuk melakukan klasifikasi
    T= 1
    N = W*Pa + B
    A = hardlim(N)
    E = T- A
    W = W + E*Pa'
    B = B + E
%end