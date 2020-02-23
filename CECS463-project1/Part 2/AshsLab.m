%% Part 1.1
N = 12;
M = [4 5 7 10 15];
int = 0:2*N-1;
xx = zeros(1,length(int));

for index = 1:length(M);
    xn = sin(2*pi*M(index)*int/N);
    figure(index);
    plot(int,xn);
    title('Part 2 #1'),xlabel('n'),ylabel('Amplitude')
end
%% Part 1.2
[P Q] = rat(M/N)
%% Part 1.3
str = sprintf("Fundamental Period=%d",P);title(str)

%% Part 2.1
k=[1 2 4 6];
omegak= 2*pi*k/5;
omegak_int= 0:9;
for ii=1:length(k);
    xk = sin(omegak(ii)*omegak_int);
    figure(5);
    subplot(4,1,ii)
    stem(omegak_int,xk)
end
%% Part 2.3

%% Part 2.4
% come back to this problem and put the periods as the title

int_n= 0:31;
x1= sin(pi*int_n/4).*cos(pi*int_n/4);
x1_period=(sin(pi*int_n/4+pi*int_n/4)+sin(pi*int_n/4-pi*int_n/4))/2;

x2= (cos(pi*int_n/4)).^2;

x3= sin(pi*int_n/4).*cos(pi*int_n/8);
x3_period= (sin(pi*int_n/4+pi*int_n/8)+sin(pi*int_n/4-pi*int_n/8))/2;

figure(9)
plot(int_n,x1)

figure(10)
plot(int_n,x2)

figure(11)
plot(int_n,x3)


%% part 2.5
