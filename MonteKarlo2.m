% Monte Karlo (Random search)metodo realizacija
% Sugeneruojame 100 atsitiktiniu tasku [-10;10]^2
% Surandame, kuriame funkcija igyja didziausia (maziausia) reiksme
a=-10;
b=10;
n=2;%dimensija
k=100;%tasku (vektoriu)skaicius
x= a + (b-a).*rand(100,n); %perdaryti kad generuotu dvimacius
for i=1:k
    f(i)=sincos2(x(i,:));
end
[fMin,indMin] = min(f)
[fMax,indMax] = max(f);
xMin = x(indMin,:) %pritaikyti dvimaciui
xMax = x(indMax,:);%pritaikyti dvimaciui
%fprintf('surastas min=%6.4f, taske x=(%6.4f, %6.4f)\n',fMin,xMin(1),xMin(2));
%fprintf('surastas max=%6.4f, taske x=(%6.4f, %6.4f)\n',fMax,xMax(1),xMax(2));
grafika2 