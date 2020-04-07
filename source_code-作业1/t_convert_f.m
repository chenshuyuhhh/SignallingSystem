function [X]=t_convert_f(x)
% fft convert
X=fft(x);
%draw
figure
subplot(2,1,1);
plot(x);
title('信号时域波形');
xlabel('时间轴')
ylabel('幅值')
subplot(2,1,2);
plot(abs(X));
title('信号频谱图');
xlabel('频率Hz');
ylabel('频率幅值');
end