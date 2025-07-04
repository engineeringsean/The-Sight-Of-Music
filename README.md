# The-Sight-Of-Music

## Description:

This project explored the frequency characteristics of three musical tracks under various audio processing conditions using MATLAB. Songs by Barry White, Outkast, and Charlie Wilson were analyzed using three key techniques: spectrogram visualization, frequency filtering, and periodogram analysis. The goal was to understand how these signal processing tools reveal different aspects of musical structure and audio content.

## Key Methods:

### Spectrogram Analysis:

Used MATLAB’s pspectrum() to generate time-frequency plots of original, unvoiced (vocals suppressed), and bass-only versions of each song.

Unvoiced versions were created by subtracting stereo channels, effectively removing centered vocal frequencies (~80–180 Hz).

Bass-only versions were produced via filtering (discussed below).

Spectrograms revealed visual differences across versions, highlighting vocal suppression and bass prominence.

### Periodogram Analysis:

Used periodogram() to analyze the frequency power distribution across conditions.

Visualized frequency magnitudes to compare how much energy was present in low vs. high frequencies.

Highlighted how voice types (e.g., Barry White’s deep vocals) influence frequency profiles and perceived sound energy.

### Frequency Filtering:

Applied bandpass() filter (20–200 Hz) to isolate bass frequencies.

This filtering reduced most instrumental and vocal content, helping visualize and listen to low-end components.

Resulting audio was perceptually quieter, emphasizing the need for gain adjustments in filtered signals.

## Outcomes & Applications:

This project demonstrated how signal processing techniques can isolate and highlight key components of audio signals. It provided insight into stereo imaging, vocal removal, and frequency-based filtering using basic MATLAB commands. Applications of these methods extend beyond music to fields such as biomedical imaging (e.g., ultrasound frequency analysis), audio engineering, and acoustic diagnostics.

### Reflection and Future Work:

Combining spectrogram and periodogram analysis offers a well-rounded view of both time-varying and static frequency content.

Future extensions could include automated genre or voice classification, or real-time filtering tools for musicians or researchers.

The techniques are simple but powerful, reinforcing the idea that meaningful insights can be gained from well-understood signal processing tools.
