# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live

## br.harmonizer.1.0

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.harmonizer.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.harmonizer](https://github.com/guaguanco127/br.harmonizer)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Links

[About](#About)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.harmonizer/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP  

## <a name="About"></a>About

Play harmonies on a live voice or instrument: the notes you play on a MIDI keyboard pick the pitches, and each one becomes a copy of your input shifted to that pitch. Up to 8 harmony voices at once, built around Max's retune~ object.

**Plays on what you play:** each harmony voice follows your input and shifts it to its note. Hold a chord and you hear your voice or trumpet as that chord, in time with you.

**Quiet or loud:** retune~ stops retuning when its input is too quiet, and distorts when it is driven too hard. An autogain keeps the level going into retune~ steady (quiet playing is lifted, loud accents are turned down), then puts your real dynamics back on the harmonies. Max Boost limits how far quiet sound is lifted, so room noise between phrases stays quiet.

**Clean note starts:** every voice keeps listening all the time, so its pitch tracking is already locked when a note starts. Each note's envelope opens exactly when the shifted sound for that note comes out of retune~, so the previous note's pitch never leaks in.

**Mono or Stereo:** Mono (default) harmonizes one signal (left + right summed, so a mic on one side keeps its full level) and puts the harmonies on both sides. Stereo harmonizes left and right separately with their own voices; it uses twice the CPU.

**Latency:** the harmonies come out a little after your input (retune~'s analysis time), and the dry signal is not delayed. Each voice runs its own retune~ at its best quality all the time, so CPU use is constant; use fewer voices (the 8 in both poly~ boxes in the core) if needed.

**Attack, Decay, Sustain, Release:** the envelope of each harmony note, in ms (Sustain 0 to 1, or 0 to 100% on the device). Note velocity sets each note's level. Defaults 5 ms, 5 ms, 1, 5 ms.

**Dry/Wet:** 0 = only your input, 1 = only the harmonies (equal-power crossfade). Default 0.5.

**Mono/Stereo:** 0 Mono, 1 Stereo. Switching clears any voices that are still sounding on the right side. Default Mono.

**Max Boost:** 0 to 48 dB, how far quiet input may be lifted before retune~. 0 = no lift. Default 30.

## <a name="How"></a>How it works

The input is summed to mono (or kept as left and right in Stereo) and goes through the autogain into two banks of 8 voices in [poly~]. Notes are allocated with poly~'s midinote: a voice marks itself busy on note-on and frees itself when its release has finished. Inside each voice, retune~ runs all the time with its target pitch set from the note; the note's envelope and velocity multiply retune~'s output, delayed by retune~'s own latency (it reports it at load). After the banks, each harmony is multiplied by the inverse of the autogain, delayed by the same latency, and mixed with the dry signal.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.harmonizer.core.1.0 | The harmonizer: stereo in, MIDI notes in, stereo out |
| br.harmonizer.voice.1.0 | One harmony voice, loaded by the core's [poly~]. Keep it in the same folder as the core |
| _br.harmonizer.example.1.0 | Example patch: open this first. Mic in, MIDI keyboard (or click the keys), all controls |

## <a name="Credits"></a>Credits

Built around retune~ (Cycling '74). Original research and design by Brian Riordan: voice allocation, latency-aligned envelopes, autogain with restore, Mono/Stereo banks, and patches.
