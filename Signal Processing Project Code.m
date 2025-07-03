clc
close all;

%FIRST SONG

[y, Fs] = audioread('cantgetenough.mp3');

% Checking if song is stereo, establishing channels, and establishing axes

[M,N] = size(y);

if N == 1
    error('the music is not stereo');
elseif N > 2
    error('The audio has more than two channels');
end

left_channel = y(:,1);
right_channel = y(:,2);

y = y(:, 1);
dt = 1/Fs;
t = 0:dt:(length(y)*dt) - dt;

% Creating Unvoiced and Bass Only "Cant Get Enough of Your Love Baby"

unvoiced_music = left_channel - right_channel;
bass_only = bandpass(y, [20 200], Fs);

% Spectrograms "Cant Get Enough of Your Love Baby"

subplot(331)
pspectrum(y,t,'spectrogram')
title('Spectrogram Original "Cant Get Enough"')
ylim([0 1])
subplot(332)
pspectrum(unvoiced_music,t,'spectrogram')
title('Spectrogram Unvoiced "Cant Get Enough"')
ylim([0 1])
subplot(333)
pspectrum(bass_only,t,'spectrogram')
title('Spectrogram Only Bass "Cant Get Enough"')
ylim([0 1])



% SECOND SONG

[y2, Fs2] = audioread('sofreshsoclean.mp3');

% Checking if song is stereo, establishing channels, and establishing axes

[M2,N2] = size(y2);

if N2 == 1
    error('the music is not stereo');
elseif N2 > 2
    error('The audio has more than two channels');
end

left_channel2 = y2(:,1);
right_channel2 = y2(:,2);

y2 = y2(:, 1);
dt2 = 1/Fs2;
t2 = 0:dt2:(length(y2)*dt2) - dt2;

% Creating Unvoiced and Bass Only "So Fresh So Clean"

unvoiced_music2 = left_channel2 - right_channel2;
bass_only2 = bandpass(y2, [20 200], Fs2);

% Spectrograms "So Fresh So Clean"

subplot(334)
pspectrum(y2,t2,'spectrogram')
title('Spectrogram Original "So Fresh So Clean"')
ylim([0 1])
subplot(335)
pspectrum(unvoiced_music2,t2,'spectrogram')
title('Spectrogram Unvoiced "So Fresh So Clean"')
ylim([0 1])
subplot(336)
pspectrum(bass_only2,t2,'spectrogram')
title('Spectrogram Only Bass "So Fresh So Clean"')
ylim([0 1])



% THIRD SONG

[y3, Fs3] = audioread('cantlivewithoutyou.mp3');

% Checking if song is stereo, establishing channels, and establishing axes

[M3,N3] = size(y3);

if N3 == 1
    error('the music is not stereo');
elseif N3 > 2
    error('The audio has more than two channels');
end

left_channel3 = y3(:,1);
right_channel3 = y3(:,2);

y3 = y3(:, 1);
dt3 = 1/Fs3;
t3 = 0:dt3:(length(y3)*dt3) - dt3;

% Creating Unvoiced and Bass Only "Cant Live Without You"

unvoiced_music3 = left_channel3 - right_channel3;
bass_only3 = bandpass(y3, [20 200], Fs3);

% Spectrograms "Cant Live Without You"

subplot(337)
pspectrum(y3,t3,'spectrogram')
title('Spectrogram Original "Cant Live Without You"')
ylim([0 1])
subplot(338)
pspectrum(unvoiced_music3,t3,'spectrogram')
title('Spectrogram Unvoiced "Cant Live Without You"')
ylim([0 1])
subplot(339)
pspectrum(bass_only3,t3,'spectrogram')
title('Spectrogram Only Bass "Cant Live Without You"')
ylim([0 1])

% All Periodograms

figure(2);
subplot(331)
periodogram(y)
title('Periodogram Original "Cant Get Enough"')
subplot(332)
periodogram(unvoiced_music)
title('Periodogram Unvoiced "Cant Get Enough"')
subplot(333)
periodogram(bass_only)
title('Periodogram Only Bass "Cant Get Enough"')
subplot(334)
periodogram(y2)
title('Periodogram Original "So Fresh So Clean"')
subplot(335)
periodogram(unvoiced_music2)
title('Periodogram Unvoiced "So Fresh So Clean"')
subplot(336)
periodogram(bass_only2)
title('Periodogram Only Bass "So Fresh So Clean"')
subplot(337)
periodogram(y3)
title('Periodogram Original "Cant Live Without You"')
subplot(338)
periodogram(unvoiced_music3)
title('Periodogram Unvoiced "Cant Live Without You"')
subplot(339)
periodogram(bass_only3)
title('Periodogram Only Bass "Cant Live Without You"')

%sound(y, Fs);
%sound(unvoiced_music, Fs);
%sound(bass_only, Fs);
%sound(y2, Fs2);
%sound(unvoiced_music2, Fs2);
%sound(bass_only2, Fs2);
%sound(y3, Fs3);
%sound(unvoiced_music3, Fs3);
%sound(bass_only3, Fs3);

