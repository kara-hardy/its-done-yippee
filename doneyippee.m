function doneyippee
[y,Fs] = audioread('yippee.mp3');
sound(y, Fs)
pause(0.7)
sound(y, Fs)
pause(0.7)
sound(y, Fs)
end