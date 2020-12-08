r2d = @(x) (x*180/pi);
cisd = @(x) cis(d2r(x));
% cis = @(x) exp(j*x); %para ang en radianes

%% Etapa 1
s11 = 0.382*cisd(-41);
s12 = 0.016*cisd(79);
s21 = 21.21*cisd(141);
s22 = 0.718*cisd(-9);

D1 = s11*s22-s12*s21

K1 = (1+abs(D1)^2 -abs(s11)^2-abs(s22)^2)/(2*abs(s12*s21))


%% Etapa 2
s11 = 0.33*cisd(-119);
s12 = 0.029*cisd(63);
s21 = 22.59*cisd(109);
s22 = 0.39*cisd(-51);

D2 = s11*s22-s12*s21

K2 = (1+abs(D2)^2 -abs(s11)^2-abs(s22)^2)/(2*abs(s12*s21))