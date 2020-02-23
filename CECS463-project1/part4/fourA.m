%Part 4 - 1a

clearvars;
close all;

A = 2; B = -1;

%delta function x_1[n]
[x_1,n] = impseq(0,0,10);
%delta function x_2[n]
x_2 = 2*x_1;

lhs = sin((pi/2) * (A*x_1 + B*x_2))
rhs = A*sin((pi/2) * x_1) + B*sin((pi/2) * x_2)

figure(1)

subplot (1,2,1)
stem(n,lhs, 'filled','markersize',5);
axis([0 10 0 2])
xlabel('n'); ylabel('x[n]');
title('LHS: y[Ax+1[n] + Bx_2[n] ]');
grid minor

subplot (1,2,2)
stem(n,rhs, 'filled','markersize',5);
axis([0 10 0 2])
xlabel('n'); ylabel('x[n]');
title('LHS: Ay[x_1[n] + By[x_2[n] ]');
grid minor



