% write two voice
function [] = write_voice(h,s1_name,z,s2_name,fs)
try
    % 把数字信号转成模拟信号
    % write voice1
    audiowrite(s1_name,h,fs);
    % write voice2
    audiowrite(s2_name,z,fs);
catch ErrorInfo
    throw(ErrorInfo);
end
end

