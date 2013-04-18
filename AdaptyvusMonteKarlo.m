function [fMin2Visos,vidurk] = AdaptyvusMonteKarlo(funkcija,a1,b1)
fMin2Visos = [];
% Monte Karlo (Random search)metodo realizacija
% Sugeneruojame 100 atsitiktiniu tasku [-10;10]^2
% Surandame, kuriame funkcija igyja didziausia (maziausia) reiksme
%PALEIDIMAS  pvz.: 
%a1=-10, b1=10; funkcija= @sincos2
%[fMin2,xMin2]= AdaptyvusMonteKarlo(funkcija,a1,b1)
%a1=-10; %pradine (pilna) sritis
%b1=10;  %pradine (pilna) sritis
for ii=1:100
    n=2;    %dimensija
    k1=50;  %tasku (vektoriu)skaicius
    x1= a1 + (b1-a1).* rand(k1,n); % generuoja dvimacius
    f1=[];
    hold on;
    for i=1:k1
        f1(i)=funkcija(x1(i,:));
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
    %scatter(xMax1(1),xMax1(2),'y*');
    text(xMin1(1)+0.3,xMin1(2),num2str(fMin1));
    %text(xMax1(1)+0.3,xMax1(2),num2str(fMax1));
    rectangle('Position', [-10.0,-10.0,20.0,20.0],...
        'LineWidth',5,'LineStyle','--')
    %kitus 50 bandymu atliekame sumazintoje srityje
    k2=50;
    a2=xMin1(1)-4; %sumazinta sritis x /kaire
    b2=xMin1(1)+4; %sumazinta sritis y /desine
    a3=xMin1(2)-4; %sumazinta sritis x /apacia
    b3=xMin1(2)+4; %sumazinta sritis y /virsus
    %a4=xMax1(1)-4; %sumazinta sritis x /kaire
    %b4=xMax1(1)+4; %sumazinta sritis y /desine
    %a5=xMax1(2)-4; %sumazinta sritis x /apacia
    %b5=xMax1(2)+4; %sumazinta sritis y /virsus
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
        b3=-2;
    end
    if (b3>10)
        b3=10;
        a3=2;
    end  
    %{
    if (a4<-10) 
        a4=-10;
        b4=-2;
    end
    if (b4>10)
        b4=10;
        a4=2;
    end
    if (a5<-10)
        a5=-10;
        b5=-2;
    end
    if (b5>10)
        b5=10;
        a5=2;
    end
    %}
    x2(:,1)= a2 + (b2-a2).* rand(k2,1); %generuoja dvimacius;
    x2(:,2)= a3 + (b3-a3).* rand(k2,1);

    %x3(:,1)= a4 + (b4-a4).* rand(k2,1); %generuoja dvimacius;
    %x3(:,2)= a5 + (b5-a5).* rand(k2,1);

    f2=[];
    %f3=[];
    for i=1:k2
        f2(i)=funkcija(x2(i,:));
        %f3(i)=funkcija(x3(i,:));
    end
    [fMin2,indMin2] = min(f2);
    %[fMax2,indMax2] = max(f3);
    fMin2Visos = [fMin2Visos,fMin2];
    xMin2 = x2(indMin2,:); %pritaikytas dvimaciui
    %xMax2 = x3(indMax2,:);%pritaikytas dvimaciui
    fprintf('surastas min2=%6.4f, taske x2=(%6.4f, %6.4f)\n',fMin2,xMin2(1),xMin2(2));
    %fprintf('surastas max2=%6.4f, taske x3=(%6.4f, %6.4f)\n',fMax2,xMax2(1),xMax2(2));
    scatter(x2(:,1),x2(:,2),'y.');
    %scatter(x3(:,1),x3(:,2),'r.');
    scatter(xMin2(1),xMin2(2),'g*');
    %scatter(xMax2(1),xMax2(2),'r*');
    text(xMin2(1)+0.3,xMin2(2),num2str(fMin2));
    %text(xMax2(1)+0.3,xMax2(2),num2str(fMax2));
    rectangle('Position', [a2,a3,8.0, 8.0],...
        'LineWidth',2,'LineStyle','--') 
    %rectangle('Position', [a4,a5,8.0, 8.0],...
    % 'LineWidth',2,'LineStyle','--')
end
vidurk = mean(fMin2Visos);