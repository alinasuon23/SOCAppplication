amplitude = 1;
dcoffset= -1;
angFrequency = 1;
phaseAngle = 2;

fct = @(t) amplitude * cos(angFrequency * t) + dcoffset;
fplot(fct);
