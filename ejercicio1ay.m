clear all
clc
a = [1, -1, 0.9];
b = 1;
[x,n] = impulso(0,-40,200);
h = filter(b, a, x);
subplot 211
plot(n, h);
title('Respuesta Impulso')
xlabel('n'); grid
hold on
[x, n] = escalon(0,-40,200);
h = filter(b, a, x);
subplot 212
plot(n, h);
title('Respuesta Escalon')
xlabel('n'); grid
