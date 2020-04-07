% open file of voice and play
function []= open_sound(file_name)
% open file
[s ,fs] = audioread(file_name);
% play voice by mathmatical signal and fs of voice
sound(s,fs);
end

