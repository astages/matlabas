% Monte Karlo (Random search)metodo realizacija
% Sugeneruojame 100 atsitiktiniu tasku [-10;10] generuos nuo a iki b
% Surandame, kuriame funkcija igyja didziausia (maziausia) reiksme
a=-10;
b=10;
x= a + (b-a).* rand(100,1);
f = sincos(x);
[fMin,indMin] = min(f);
[fMax,indMax] = max(f);
xMin = x(indMin);
xMax = x(indMax);
fprintf('surastas min=%6.4f, taske x=%6.4f \n',fMin,xMin);
fprintf('surastas max=%6.4f, taske x=%6.4f \n',fMax,xMax);
grafika