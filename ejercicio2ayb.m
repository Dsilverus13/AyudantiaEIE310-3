clear all
clc
w = [0 : 0.002 : 1]*pi; % vector de frecuencia
S = 100; % longitud de la secuencia
n = [1 : S]; % vector de tiempo
% Pulso angosto
P1 = 20; % ancho del pulso
x1 = [ones(1, P1) zeros(1, S-P1)]; % secuencia pulso
[X1] = dtft(x1, n, w);
% Pulso medio
P2 = 40; % ancho del pulso
x2 = [ones(1, P2) zeros(1, S-P2)]; % secuencia pulso
[X2] = dtft(x2, n, w);
% Pulso ancho
P3 = 60; % ancho del pulso
x3 = [ones(1, P3) zeros(1, S-P3)]; % secuencia pulso
[X3] = dtft(x3, n, w);
subplot 321; stem(n, x1); xlabel('n'); ylabel('Pulso 1'); grid
subplot 322; plot(w/pi, abs(X1)); xlabel('w / Pi [rad/m]'); ylabel('Pulso 1'); grid
subplot 323; stem(n, x2); xlabel('n'); ylabel('Pulso 2'); grid
subplot 324; plot(w/pi, abs(X2)); xlabel('w / Pi [rad/m]'); ylabel('Pulso 2'); grid
subplot 325; stem(n, x3); xlabel('n'); ylabel('Pulso 3') ;grid
subplot 326; plot(w/pi, abs(X3)); xlabel('w / Pi [rad/m]'); ylabel('Pulso 3'); grid

