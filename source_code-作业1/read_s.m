% read original voice
function[] = read_s(file_path)
[s ,fs] = audioread(file_path); % fs 是频率
s = s/max(abs(s)); 
t_convert_f(s);
% sound(s,fs);
l = length(s);  % 选取变换的点数

% S = fft(s,l); % 对l点进行傅里叶变换到频域
% 
% figure(1);
% subplot(2,1,1);
% plot(s);
% title('原始');
% xlabel('时间轴')
% ylabel('幅值 A')
% 
% subplot(2,1,2);
% plot(abs(S));     % 语音信号的频谱图
% title('原始语音信号采样后频谱图');
% xlabel('频率Hz');
% ylabel('频率幅值');
end