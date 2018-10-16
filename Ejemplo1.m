Vo=zeros(1,98);
Vo(1) = 0;
Vi=% inicialización
for n = 2 : 100
Vo(n) = 0.1 * Vi(n) + 0.9 * Vo(n-1);
end