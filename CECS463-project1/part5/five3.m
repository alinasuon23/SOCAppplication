clc;
clear all;
close all;


c = 1;
z_v1 = -1;
V = 11;


A = 1;
B = 1;

[u1, v1] = stepseq(0,0,V-1);
u2 = 2*u1;
u = A*u1 + B*u2;

z_lhs = diffeqn(c,u,z_v1);
z1 = diffeqn(c,u1,z_v1);
z2 = diffeqn(c,u2,z_v1);
z_rhs = A*z1+B*z2;


figure(3);
subplot(2,1,1);
stem(v1,z_lhs);
title('zlhs');
xlabel('v');
ylabel('zlhs');
auis([-10,15, 0, 35])

subplot(2,1,2);
stem(v1,z_rhs);
title('zrhs');
xlabel('v');
ylabel('zrhs');
auis([-10,15, 0, 35])