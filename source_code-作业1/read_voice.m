% read original voice
function [s,fs,S] = read_voice(file_name)
[s ,fs] = audioread(file_name); % fs 是频率
s = s/max(abs(s)); % 归一化 
S=t_convert_f(s); % 进行傅里叶变换到频域
end
