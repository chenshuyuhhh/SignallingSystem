% filter sound
function [h,z,H,Z] = filter_sound(y,N,wc,N2,wc2)
% 低通滤波器
[b,a]=butter(N,wc,'low');
h=filter(b,a,y);
H = t_convert_f(h);

% 高通滤波器
[b2,a2]=butter(N2,wc2,'high');
z=filter(b2,a2,y);
Z = t_convert_f(z);

