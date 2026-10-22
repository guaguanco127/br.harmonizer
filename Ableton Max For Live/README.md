# Ableton Max for Live device: br.harmonizer.1.0  

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.harmonizer.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.harmonizer](https://github.com/guaguanco127/br.harmonizer)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. **The device needs Live 12** (it uses Live 12's MIDI routing, see below).

## Table of Contents

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  
[How To Use](#Use)  
[Credits](#Credits)  

## <a name="About"></a>About

Play harmonies on a live voice or instrument: the notes you play on a MIDI keyboard pick the pitches, and each one becomes a copy of your input shifted to that pitch. Up to 8 harmony voices at once, built around Max's retune~ object.

**Plays on what you play:** each harmony voice follows your input and shifts it to its note. Hold a chord and you hear your voice or trumpet as that chord, in time with you.

**Quiet or loud:** retune~ stops retuning when its input is too quiet, and distorts when it is driven too hard. An autogain keeps the level going into retune~ steady (quiet playing is lifted, loud accents are turned down), then puts your real dynamics back on the harmonies. Max Boost limits how far quiet sound is lifted, so room noise between phrases stays quiet.

**Clean note starts:** every voice keeps listening all the time, so its pitch tracking is already locked when a note starts. Each note's envelope opens exactly when the shifted sound for that note comes out of retune~, so the previous note's pitch never leaks in.

**Mono or Stereo:** Mono (default) harmonizes one signal (left + right summed, so a mic on one side keeps its full level) and puts the harmonies on both sides. Stereo harmonizes left and right separately with their own voices; it uses twice the CPU.

**Latency:** the harmonies come out a little after your input (retune~'s analysis time), and the dry signal is not delayed. Each voice runs its own retune~ at its best quality all the time, so CPU use is constant; use fewer voices (the 8 in both poly~ boxes in the core) if needed.

A Max for Live audio effect for the track your voice or instrument is on. It gets its notes from any MIDI track or MIDI port through the **MIDI From** menu, so one device does everything. All controls are Live parameters, so you can automate them or map them to a controller. There is no output gain: use Live's mixer.

### Controls

**Attack, Decay, Sustain, Release:** the envelope of each harmony note, in ms (Sustain 0 to 100%). Note velocity sets each note's level. Defaults 5 ms, 5 ms, 100%, 5 ms.

**Dry/Wet:** 0% = only your input, 100% = only the harmonies (equal-power crossfade). Default 50%.

**Mono/Stereo:** the button switches between Mono and Stereo. Switching clears any voices that are still sounding on the right side. Default Mono.

**Max Boost:** 0 to 48 dB, how far quiet input may be lifted before retune~. 0 = no lift. Default 30.

**MIDI From (top menu):** the MIDI track or MIDI port that plays the harmonies. **Channel / tap point (bottom menu):** where on that track the MIDI is taken; the first choice is usually right. Both are saved with your Live Set.

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

**Needs Live 12:** the MIDI From menu uses Live 12's MIDI routing (live.routing), which Live 11 does not have.

1. Make sure you have Ableton Live 12 Suite installed on your computer, and that Live is closed while installing.

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.harmonizer.1.0.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  

4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track your voice or instrument is on.

**The device is frozen:** the core and voice patches are inside the .amxd, so no other files are needed.

## <a name="Use"></a>How To Use

1. Put br.harmonizer on the audio track with your mic or instrument (monitoring on, so you hear it).
2. Put your MIDI keyboard on a MIDI track, or plug it in as a MIDI port.
3. In br.harmonizer's **MIDI From** menu, pick that MIDI track (or port).
4. Sing or play, and hold keys: each held key adds a harmony at that pitch.

## <a name="Credits"></a>Credits

Built around retune~ (Cycling '74). Original research and design by Brian Riordan: voice allocation, latency-aligned envelopes, autogain with restore, Mono/Stereo banks, and patches.
