%% Datos
clc;
format shortEng;
disp('----------- Datos -----------');
f0 = 10e+6
vcc = 12
pl = 5e-3
rl = 50
beta = 60
vbe = 0.7
l1 = 100e-9
disp('-----------------------------');

ct = 1/( (2*pi*f0)^2 * l1 )
icq = sqrt(2*pl/rl)
vceq = vcc / 2
re = (vcc-vceq)/icq
rb = beta * re / 10
vbb = icq*(rb/beta+re)+vbe
r1 = rb / (1-vbb/vcc)
r2 = rb / (vbb/vcc)
w = 2*pi*f0
c4 = rl / w %%%%%%%%%%% <---  Revisar
l2 = 10*rl/w

