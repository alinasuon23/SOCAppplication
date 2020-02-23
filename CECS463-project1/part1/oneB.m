x=1-2j;
y=-1+1j;

a = (x+y);
b = (x-y);
c = (x*y);
d = (x/y);
p = x.^y;
hold on

set(plot(real(a), imag(a)),'Marker','square')
text(real(a), imag(a), ' a');

set(plot(real(b), imag(b)),'Marker','square')
text(real(b), imag(b), ' b');

set(plot(real(c), imag(c)),'Marker','square')
text(real(c), imag(c), ' c');

set(plot(real(d), imag(d)),'Marker','square')
text(real(d), imag(d), ' d');

set(plot(real(p), imag(p)),'Marker','square')
text(real(p), imag(p), ' p');
hold off