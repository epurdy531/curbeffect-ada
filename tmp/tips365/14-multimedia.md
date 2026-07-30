### Add captions to prerecorded video first

Every prerecorded video with speech needs synchronized captions, and this is usually the single highest-impact multimedia fix. Do not rely on YouTube's raw auto-captions: they routinely mangle names, agency acronyms, and legal terms. Instead, download the auto-caption draft as a starting point, then correct it against the audio and re-upload it, or produce a clean caption file yourself. Save captions as WebVTT (.vtt) or SRT and either attach them to your player's `<track kind="captions">` element or upload them in the platform's caption editor. Verify captions are synchronized to within a fraction of a second so viewers reading them stay aligned with what they hear.

*Reference: WCAG 1.2.2 (A)*

### Provide a full transcript alongside video

A caption track shows dialogue in sync, but a separate text transcript serves people who cannot use the player, prefer to skim, or rely on braille displays. Publish the transcript as accessible HTML on the same page or as a tagged, reading-order-correct document linked directly beneath the video. A good transcript includes all spoken words plus speaker labels and brief descriptions of important non-spoken information the audio conveys. Place the transcript link where it is obvious, not buried in a sidebar. For a public meeting recording, the transcript also doubles as a searchable record, which helps staff respond to records requests without re-watching hours of footage.

*Reference: WCAG 1.2.2 (A); WCAG 1.2.3 (A)*

### Caption live streams in real time

Live video such as council meetings, court proceedings, and public hearings needs captions delivered as the event happens. The reliable route is CART (Communication Access Realtime Translation) from a trained human captioner who types into a stream your platform ingests, or a vetted automatic captioning service where accuracy is acceptable and monitored. Book the captioner well before the meeting and give them an agenda, agency names, and speaker lists so proper nouns come through correctly. Confirm the caption feed is visible in the same window as the video, not only on a separate URL. After the event, clean up the live caption transcript and attach it to the archived recording as prerecorded captions.

*Reference: WCAG 1.2.4 (AA)*

### Add audio description for meaningful visuals

When a video shows information that is not spoken aloud, such as an on-screen chart, a demonstrated form, or a name that only appears as text, sighted viewers get it but blind viewers do not. Audio description fills that gap with narration inserted into pauses in the dialogue. First check whether existing pauses are long enough; if they are, record standard audio description and offer it as an alternate track. If the audio is wall-to-wall, you may need extended audio description that pauses the video, or a re-edited version. When planning new videos, script narration that speaks visible information aloud so separate description is rarely needed.

*Reference: WCAG 1.2.5 (AA)*

### Give audio-only files a transcript

Podcasts, recorded phone town halls, radio-style announcements, and any audio-only content need a text transcript so deaf and hard-of-hearing users get the same information. The transcript should capture all spoken words plus speaker identification and any meaningful sounds. Publish it as readable HTML on the page hosting the audio, and link it clearly right next to the play button. For a series, keep transcripts consistently formatted and titled so users learn where to find them. Because audio-only content has no visuals, a plain accurate transcript fully satisfies the requirement; you do not need captions or description here.

*Reference: WCAG 1.2.1 (A)*

### Do not auto-play audio

Sound that starts automatically when a page loads collides with screen reader speech, startles users, and can drown out assistive technology output. Avoid auto-playing audio or video with sound entirely. If a background clip must play on load, keep it under three seconds, or provide an obvious, keyboard-reachable control near the top of the page to pause, stop, or mute it independently of the system volume. Setting the video element's `muted` attribute and requiring a user click to unmute is the safest pattern. Check embedded widgets and hero-banner videos, which are common culprits, and confirm nothing plays until the user chooses to start it.

*Reference: WCAG 1.4.2 (A)*

### Choose a keyboard-operable media player

The player controls themselves must be usable without a mouse. Test by tabbing to the video: you should be able to reach and activate play/pause, volume, mute, captions, and the timeline scrubber using the keyboard alone, with a visible focus indicator on each control. Each control needs an accessible name a screen reader announces, such as "Play" or "Captions on." Many default players fail here, so prefer an accessible player such as Able Player or a well-tested framework component rather than a bare custom build. Confirm the caption toggle is present and works, and that focus is not trapped inside the player once the user tabs past it.

*Reference: WCAG 2.1.1 (A); WCAG 4.1.2 (A)*

### Identify speakers in captions and transcripts

Accurate captions are not just correct words; they tell the viewer who is speaking. In meetings and panels with several voices, prefix lines with the speaker's name or role, for example ">> MAYOR:" or ">> CLERK:", changing the label whenever the speaker changes. This matters most when people are off-screen or the camera does not follow the talker. Keep labels consistent throughout the file and match them to how speakers are introduced. In transcripts, put speaker names in bold or on their own line for scannability. This small discipline turns a wall of text into a usable record and helps viewers who cannot distinguish voices by sound follow the conversation.

*Reference: WCAG 1.2.2 (A)*

### Caption meaningful sound effects and music

Captions should convey non-speech audio that carries meaning, not only dialogue. Enclose descriptions in brackets, such as [applause], [gavel bangs], [alarm sounds], or [phone ringing], so deaf viewers know what hearing viewers hear. Note relevant music with [upbeat music] or, when lyrics matter, caption the lyrics. Do not clutter the track with every incidental noise; include only sounds that affect understanding or set important context. Place a sound-effect caption at the moment the sound occurs so timing stays meaningful. Skipping these is a common quality gap in otherwise well-transcribed government videos, and it leaves out information that is genuinely part of the content.

*Reference: WCAG 1.2.2 (A)*

### Handle captions in PowerPoint and slide videos

Video and audio embedded in a PowerPoint deck carry the same caption and transcript duties as web video. In PowerPoint, select the media, open the Playback tab, and use Insert Captions to attach a WebVTT file so viewers can toggle captions during the show. Turn off any Start Automatically setting that plays sound on slide entry, since auto-play is disorienting and collides with screen readers. If the deck will be distributed as a file, confirm the caption file travels with it or embed the media rather than linking. When you export the deck to video or PDF, re-verify that captions and alternatives survive the conversion.

*Reference: WCAG 1.2.2 (A); WCAG 1.4.2 (A)*

### Do not treat sign language as a substitute for captions

Some agencies add a sign-language interpreter window to live meetings, which is excellent for the Deaf community that uses that language, but it does not replace captions. Signed content is a separate language and serves a different audience than text captions, and WCAG treats sign-language interpretation as an additional, higher (AAA) provision rather than a substitute for the required captions and transcript. So keep providing synchronized captions and a transcript even when an interpreter is present. If you do include a signer, make sure the interpreter window is large enough and well-lit, and that it is not cropped out when the recording is archived or embedded elsewhere.

*Reference: WCAG 1.2.2 (A); WCAG 1.2.6 (AAA)*

### Vet embedded third-party video for accessibility

When you embed video hosted elsewhere, such as a state agency's YouTube channel or a vendor's training platform, your page is still responsible for the experience. Before embedding, confirm the source video has accurate captions and, where needed, audio description and a transcript. If the third-party player is not keyboard operable or lacks caption controls, either host an accessible copy yourself or link out with a clear note rather than trapping users in a broken embed. Give each `<iframe>` a descriptive `title` attribute so screen readers announce what the frame contains. Do not assume a popular platform's default captions are adequate; check the specific video you are embedding.

*Reference: WCAG 1.2.2 (A); WCAG 4.1.2 (A)*

### Fix caption timing and reading speed

Captions that lag the audio, flash by too fast, or dump too many words at once are technically present but unusable. Aim for readable chunks of one to two lines that stay on screen long enough to read, roughly matching a comfortable reading rate rather than the raw speech rate. Break lines at natural phrase boundaries instead of mid-clause, and never split a person's name across two caption frames. In your WebVTT file, adjust the start and end timestamps so each cue appears slightly before the words are spoken and clears after. Preview the result at normal playback speed and watch for overlap, where one cue covers the next.

*Reference: WCAG 1.2.2 (A)*

### Write captions verbatim, then clean lightly

Captions should reflect what is actually said, including false starts and asides that carry meaning, so viewers get the same content hearing users do. That said, remove obvious stutters and filler that add nothing, and fix mis-recognized words from an automatic pass. Spell out numbers, agency acronyms, and proper nouns the way they are commonly written so they read cleanly. Do not silently paraphrase or summarize a speaker; that changes the record, which matters especially for public meetings and court proceedings. When a word is genuinely inaudible, mark it [inaudible] rather than guessing. The goal is an accurate, readable text that a hearing viewer would recognize as faithful.

*Reference: WCAG 1.2.2 (A)*

### Make the caption toggle discoverable

Captions only help if users can find and turn them on. Ensure the player shows a clearly labeled captions or "CC" button that is reachable by keyboard and announced by screen readers with a name like "Show captions." Where the platform allows, default captions to on for public-meeting and emergency content so users do not have to hunt for the control. If you offer multiple tracks, such as English captions plus a Spanish translation, label each track by language so the picker is understandable. Test the toggle on the actual devices your audience uses, including mobile, since caption controls sometimes hide behind an overflow menu on small screens.

*Reference: WCAG 1.2.2 (A); WCAG 4.1.2 (A)*

### Plan accessible media before production

The cheapest way to caption and describe video is to plan for it while making the video, not after. When scripting, have speakers say visible information aloud, such as reading out a web address or the key figure in a chart, so little or no separate audio description is needed. Record clean audio with one speaker at a time to make captioning accurate and fast. Keep the source transcript or script as the basis for your caption file. Build in time and budget for a human caption pass and, for outside vendors, put caption and transcript deliverables in the contract. Front-loading this work avoids costly remediation of large video archives later.

*Reference: WCAG 1.2.2 (A); WCAG 1.2.5 (AA)*
