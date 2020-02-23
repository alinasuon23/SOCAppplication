x=1-2j;
y=-1+1j;

a = (x+y);
b = (x-y);
c = (x*y);
d = (x/y);
p = x.^y;
hold on

plot([0 real(x)], [0 imag(x)]);
plot([0 real(y)], [0 imag(y)]);
plot([0 real(a)], [0 imag(a)]);
plot([0 real(b)], [0 imag(b)]);
plot([0 real(c)], [0 imag(c)]);
plot([0 real(d)], [0 imag(d)]);
plot([0 real(p)], [0 imag(p)]);

text(real(x), imag(x), ' x');
text(real(y), imag(y), ' y');
text(real(a), imag(a), ' a');
text(real(b), imag(b), ' b');
text(real(c), imag(c), ' c');
text(real(d), imag(d), ' d');
text(real(p), imag(p), ' p');

hold off