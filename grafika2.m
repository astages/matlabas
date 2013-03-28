x1=-10:0.2:10;
x2=x1;
[X1,X2]=meshgrid(x1,x2);%padaryt, kad sugeneruotu dvimaciu tasku tinkleli
mesh(sincos2(x,:)); %plot netiks: surf, mesh komandospadaryti, kad breztu dvimate funkcija
