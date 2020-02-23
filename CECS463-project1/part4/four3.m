clc;
clear all;
close all;


shift = -1;
z = @(u,w)w.*u;

[u1, w1] = stepseq(0,-5,9);
[u2, w2] = sigshift(u1,w1,shift);

[z,w] = sigadd(u1,w1,u2,w2);


subplot(2,1,1);
stem(w1, u1);
title('u(w)');
axis([-10,10, min(z)-1, max(z)+1])

subplot(2,1,2);
stem(w,z);
title('z(w)');
axis([-10,10, min(z)-1, max(z)+1])