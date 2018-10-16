clear all
clc
x=[1,2,0,0];
h=1:5000000;
conv(x,h);
s = toc;
fprintf('Tiempo conv [seg] : %2.2f\n', s)
cnv(x,h);
s = toc;
fprintf('Tiempo cnv [seg] : %2.2f\n', s)


