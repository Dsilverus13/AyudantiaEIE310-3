clear all
clc
x = [1 1 1 1 1 1 1 1 1 1 1 1 1 0.5 0.1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; % entrada
a = [1 0.5]; % coeficientes de y(n)
b = [4 3 2]; % coeficientes de x(n)
y = filter(b, a, x); % salida
n = 1:length(y);
stem(n,y)
plot(n,y)
