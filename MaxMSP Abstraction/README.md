# Max/MSP Abstractions:  
## br.harmonizer.1.0

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.harmonizer.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.harmonizer](https://github.com/guaguanco127/br.harmonizer)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[Example Patch](#Example)  
[Credits](#Credits)  

## <a name="About"></a>About

Play harmonies on a live voice or instrument: the notes you play on a MIDI keyboard pick the pitches, and each one becomes a copy of your input shifted to that pitch. Up to 8 harmony voices at once, built around Max's retune~ object.

**Plays on what you play:** each harmony voice follows your input and shifts it to its note. Hold a chord and you hear your voice or trumpet as that chord, in time with you.

**Quiet or loud:** retune~ stops retuning when its input is too quiet, and distorts when it is driven too hard. An autogain keeps the level going into retune~ steady (quiet playing is lifted, loud accents are turned down), then puts your real dynamics back on the harmonies. Max Boost limits how far quiet sound is lifted, so room noise between phrases stays quiet.

**Clean note starts:** every voice keeps listening all the time, so its pitch tracking is already locked when a note starts. Each note's envelope opens exactly when the shifted sound for that note comes out of retune~, so the previous note's pitch never leaks in.

**Mono or Stereo:** Mono (default) harmonizes one signal (left + right summed, so a mic on one side keeps its full level) and puts the harmonies on both sides. Stereo harmonizes left and right separately with their own voices; it uses twice the CPU.

**Latency:** the harmonies come out a little after your input (retune~'s analysis time), and the dry signal is not delayed. Each voice runs its own retune~ at its best quality all the time, so CPU use is constant; use fewer voices (the 8 in both poly~ boxes in the core) if needed.

### Controls

**Attack, Decay, Sustain, Release:** the envelope of each harmony note, in ms (Sustain 0 to 1, or 0 to 100% on the device). Note velocity sets each note's level. Defaults 5 ms, 5 ms, 1, 5 ms.

**Dry/Wet:** 0 = only your input, 1 = only the harmonies (equal-power crossfade). Default 0.5.

**Mono/Stereo:** 0 Mono, 1 Stereo. Switching clears any voices that are still sounding on the right side. Default Mono.

**Max Boost:** 0 to 48 dB, how far quiet input may be lifted before retune~. 0 = no lift. Default 30.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy br.harmonizer.core.1.0.maxpat and br.harmonizer.voice.1.0.maxpat into the same folder as the Max patch you are using (the core loads the voice by name).

3. Create an object with the name br.harmonizer.core.1.0 (do not include brackets) and connect it as below.

## <a name="Use"></a>How To Use

Every control has its own inlet. Hover over an inlet or outlet in Max to see what it takes.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal |  |  |
| 2 | Right In | Signal |  |  |
| 3 | Notes | List | pitch velocity (velocity 0 = note off), e.g. from [notein] -> [pack 0 0] | |
| 4 | Attack | Float | ms | 5 |
| 5 | Decay | Float | ms | 5 |
| 6 | Sustain | Float | 0 - 1 | 1 |
| 7 | Release | Float | ms | 5 |
| 8 | Dry/Wet | Float | 0 - 1 (0 dry, 1 all harmonies) | 0.5 |
| 9 | Mono/Stereo | Int | 0 Mono / 1 Stereo | 0 |
| 10 | Max Boost | Float | 0 - 48 dB | 30 |

| Outlet | Name | Type |
|---|---|---|
| 1 | Left Out | Signal |
| 2 | Right Out | Signal |

**Ideas:**
- Backing vocals: Dry/Wet 0.5, Attack 20 - 50 ms, Release 200 - 500 ms, and play chords under your melody.
- Octave doubling: hold the note an octave below what you sing or play.
- Pads from a sustained note: long Attack and Release (500 ms and up) with chords that change underneath.

## <a name="Example"></a>Example Patch

Open _br.harmonizer.example.1.0.maxpat (keep it in the same folder as both abstraction files). It takes your mic or instrument from inputs 1 and 2 of your audio interface and notes from any MIDI keyboard; you can also click the on-screen keys. The output starts muted at -70 dB: turn on the audio, then raise the slider slowly. Sing or play, and hold keys to hear the harmonies.

## <a name="Credits"></a>Credits

Built around retune~ (Cycling '74). Original research and design by Brian Riordan: voice allocation, latency-aligned envelopes, autogain with restore, Mono/Stereo banks, and patches.
