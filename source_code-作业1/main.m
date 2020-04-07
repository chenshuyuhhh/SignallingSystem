% finish divide of two sound
% set parameter
input_file = 'voice0.wav';
output_file1 = 's1.wav';
output_file2 = 's2.wav';
try
     % read voice
     [s,fs,S]=read_voice(input_file);
     % filter voice
     [h,z,H,Z]=filter_sound(s,5,0.15,5,0.75);
     % write voice to file
     write_voice(h,output_file1,z,output_file2,fs);
     % read voice which to be sperate
     read_s(output_file1);
     read_s(output_file2);
     % sound voice
     open_sound(output_file1);
     open_sound(output_file2);
catch errormsg
     % log error
     disp(errormsg)
end