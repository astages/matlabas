[x,y]=meshgrid(-10:.2:10);%padaryt, kad sugeneruotu dvimaciu tasku tinkleli
f=sin(x)+cos(y);
surf(x,y,f); %plot netiks: surf, mesh komandospadaryti, kad breztu dvimate funkcija
