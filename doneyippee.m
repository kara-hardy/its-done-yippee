function doneyippee
%DONEYIPPEE Play a "yippee" sound alert.
%   Call DONEYIPPEE() when a long-running script or task finishes.

thisFolder = fileparts(mfilename('fullpath'));
[y, Fs] = audioread(fullfile(thisFolder, 'yippee.mp3'));
sound(y, Fs)
% pause(0.7)
% sound(y, Fs)
% pause(0.7)
% sound(y, Fs)
end
