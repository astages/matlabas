% Monte Karlo (Random search)metodo realizacija
% Sugeneruojame 100 atsitiktiniu tasku [-10;10]^2
% Surandame, kuriame funkcija igyja didziausia (maziausia) reiksme
a=-10;
b=10;
n=2;%dimensija
k1=60;%tasku (vektoriu)skaicius
x= a + (b-a).* rand(100,n); % generuoja dvimacius
f=[];
for i=1:k1
f(i)=sincos2(x(i,:));
end
[fMin,indMin] = min(f);
[fMax,indMax] = max(f);
xMin = x(indMin,:); %pritaikytas dvimaciui
xMax = x(indMax,:);%pritaikytas dvimaciui
fprintf('surastas min=%6.4f, taske x=(%6.4f, %6.4f)\n',fMin,xMin(1),xMin(2));
%fprintf('surastas max=%6.4f, taske x=(%6.4f, %6.4f)\n',fMax,xMax(1),xMax(2));
grafika2
 
c=xMin(1)-1;
d=xMin(2)+1;
k2=40;
x2= c + (d-c).* rand(100,n); % generuoja dvimacius
f2=[];
for ii=1:k2
f2(ii)=sincos2(x2(ii,:));
end
[f2Min2,indMin2] = min(f2);
%[f2Max2,indMax2] = max(f2);
x2Min2 = x2(indMin2,:); %pritaikytas dvimaciui
%x2Max2 = x2(indMax2,:);%pritaikytas dvimaciui
fprintf('surastas min=%6.4f, taske x=(%6.4f, %6.4f)\n',f2Min2,x2Min2(1),x2Min2(2));
%fprintf('surastas max=%6.4f, taske x=(%6.4f, %6.4f)\n',f2Max2,x2Max2(1),x2Max2(2));
