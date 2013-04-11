% Monte Karlo (Random search)metodo realizacija
% Sugeneruojame 100 atsitiktiniu tasku [-10;10]^2
% Surandame, kuriame funkcija igyja didziausia (maziausia) reiksme
a1=-10; %pradine (pilna) sritis
b1=10;  %pradine (pilna) sritis
n=2;    %dimensija
k1=50;  %tasku (vektoriu)skaicius
x1= a1 + (b1-a1).* rand(k1,n); % generuoja dvimacius
f1=[];
hold on;
for i=1:k1
f1(i)=sincos2(x1(i,:));
end
[fMin1,indMin1] = min(f1);
%[fMax1,indMax1] = max(f1);
%surandame kurioje eiluteje musu ieskoma reiksme
xMin1 = x1(indMin1,:); %pritaikytas dvimaciui paiima visa eilute su abiem reiksmem
%xMax1 = x1(indMax1,:);%pritaikytas dvimaciui paiima visa eilute su abiem reiksmem
fprintf('surastas min1=%6.4f, taske x1=(%6.4f, %6.4f)\n',fMin1,xMin1(1),xMin1(2));
%fprintf('surastas max1=%6.4f, taske x1=(%6.4f, %6.4f)\n',fMax1,xMax1(1),xMax1(2));
%grafika2

%visus grafikus brezia i viena
scatter(x1(:,1),x1(:,2),'b.');
scatter(xMin1(1),xMin1(2),'r*');
text(xMin1(1)+0.3,xMin1(2),num2str(fMin1));
rectangle('Position', [-10.0,-10.0,20.0,20.0],...
   'LineWidth',5,'LineStyle','--')


%kitus 50 bandymu atliekame sumazintoje srityje
k2=50;
a2=xMin1(1)-4; %sumazinta sritis x
b2=xMin1(1)+4; %sumazinta sritis y
a3=xMin1(2)-4; %sumazinta sritis x
b3=xMin1(2)+4; %sumazinta sritis y

if (a2<-10) 
    a2=-10;
    b2=-2;
end
    if (b2>10)
        b2=10;
        a2=2;
    end
        if (a3<-10)
            a3=-10;
            b2=-2
        end
            if (b3>10)
                b3=10;
                a2=2;
            end
            
x2(:,1)= a2+ (b2-a2).* rand(k2,1); %generuoja dvimacius;
x2(:,2)= a3 + (b3-a3).* rand(k2,1);
f2=[];
for i=1:k2
f2(i)=sincos2(x2(i,:));
end
[fMin2,indMin2] = min(f2);
%[fMax2,indMax2] = max(f2);
xMin2 = x2(indMin2,:); %pritaikytas dvimaciui
%xMax = x2(indMax2,:);%pritaikytas dvimaciui
fprintf('surastas min2=%6.4f, taske x2=(%6.4f, %6.4f)\n',f2Min2,xMin2(1),xMin2(2));
%fprintf('surastas max2=%6.4f, taske x2=(%6.4f, %6.4f)\n',f2Max2,xMax2(1),xMax2(2));
scatter(x2(:,1),x2(:,2),'y.');
scatter(xMin2(1),xMin2(2),'g*');
text(xMin2(1)+0.3,xMin2(2),num2str(fMin2));
%rectangle('Position', [xMin1(1)-4,xMin1(2)-4,8.0, 8.0],...
 % 'LineWidth',2,'LineStyle','--') 
