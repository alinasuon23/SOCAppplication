clc;
clear all;
close all;

shift = -1;
z = @(u,w)w.*u;

[u1, w1] = imseq(0,0,10);

z1 = z(w1, u1);
[z2, w2]= sigshift(z1,w1,shift);

[u2,w3] = sigshift(u1, w1, shift);
z3 = z(u2,w3);

subplot(2,1,1);
stem(w2, z2);

title('z(wu(w)-1)');
subplot(2,1,2);
stem(w3, z3);
title('z((w-1)u(w-1))');