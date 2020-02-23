clc;
clear all;
close all;


c = 3/4;
z_v1 = 0;
V = 31;

[u1, v1] = stepseq(0,0,V-1);
z1 = diffeqn(c,u1,z_v1);


figure(4);
subplot(2,1,1);
stem(v1,z1);
title('z1(v)');
xlabel('v');
ylabel('z1(v)');
axis([-10,35, min(v1)-1, max(v1)+1])


z+v1 = -1;
z2 = diffeqn(a,u1,z_v1);
subplot(2,1,2);
stem(v1,z2);
title('z2(v)');
xlabel('v');
ylabel('z2(v)');
axis([-10,35, min(z1)-1, max(z1)+1])