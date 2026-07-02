function errorohno
%ERROROHNO Play an "oh no" sound alert.
%   Call ERROROHNO() from a catch block, an error handler, or anywhere
%   else you want an audible failure cue.

thisFolder = fileparts(mfilename('fullpath'));
[y, Fs] = audioread(fullfile(thisFolder, 'ohno.mp3'));
sound(y, Fs)
end
