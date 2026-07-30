### Build slides from Layouts, not blank canvases

Start every slide in PowerPoint by choosing a real layout from Home > New Slide (or Layout), never by dropping a blank slide and adding floating text boxes. Layouts come from the slide master and carry titled placeholders that screen readers announce in a predictable order. Floating text boxes added on top of a blank slide have no semantic role, often land at the end of the reading order, and get skipped or read out of sequence. When you remediate an inherited deck, retag stray text by cutting it into the correct placeholder or, if none exists, into a layout that has one. This single habit fixes most reading-order and structure problems before you ever open the checker.

*Reference: ADA Title II; WCAG 2.1 AA (1.3.1, 1.3.2)*

### Give every slide a unique, meaningful title

Each slide needs its own title, and no two should be identical. Titles are how screen-reader users navigate a deck, jumping slide to slide the way sighted users skim. Type titles into the built-in Title placeholder, then verify coverage fast in View > Outline: any slide showing no text at the top level is missing its title. If a design calls for a title you don't want shown, keep the title text but move it off the visible canvas rather than deleting it, or set it via the Selection Pane. Duplicate titles like three slides all named "Overview" defeat navigation, so append a distinguishing word to each.

*Reference: WCAG 2.4.2 (A), 2.4.6 (AA)*

### Use the Outline view to audit titles and text hierarchy

View > Outline strips a deck down to just the text that lives in real title and content placeholders, which makes it the fastest structural audit you have. Anything typed into a floating text box, WordArt, or SmartArt shape simply won't appear here, so blanks in the outline flag content that a screen reader may miss or misorder. Walk the outline top to bottom to confirm every slide has a title and that bulleted content reads as intended. You can even retype or reorganize titles directly in this pane. Treat a clean, complete outline as your first pass before running the formal Accessibility Checker.

*Reference: WCAG 1.3.1 (A), 2.4.10 (AAA)*

### Set reading order in the Selection Pane

Screen readers announce shapes on a slide in the order they sit in the Selection Pane (Home > Arrange > Selection Pane, or Alt+F10), read from bottom to top. To fix reading order, select a slide, open the pane, and drag items so the sequence from bottom upward matches the logical reading flow: title first, then content, then decorative extras. In newer builds a dedicated Reading Order pane (Review > Check Accessibility > Reading Order) lets you reorder top to bottom and hide decorative items from the tab order. Reordering here changes nothing visually but everything for assistive tech, so test with a screen reader after adjusting.

*Reference: WCAG 1.3.2 (A)*

### Add concise alt text to every meaningful image

Right-click any image, chart, icon, or grouped graphic and choose View Alt Text (or Alt Text in the ribbon) to describe what it conveys, not what it literally is. Aim for a sentence or two that captures the purpose in context: "Bar chart showing permit applications doubling from 2023 to 2025," not "chart." Skip phrases like "image of" since the screen reader already announces the element type. For a photo that sets a mood, describe the essential content a sighted reader would take away. Do this on grouped shapes too, because a group without alt text may be read piece by piece and become noise.

*Reference: WCAG 1.1.1 (A)*

### Mark purely decorative graphics as decorative

Not every graphic needs a description. Background swooshes, divider lines, repeated logos, and purely aesthetic shapes should be flagged so screen readers skip them entirely. In the Alt Text pane, check "Mark as decorative"; PowerPoint then removes the object from the reading order instead of announcing empty or meaningless content. This keeps navigation crisp for users who otherwise have to tab past dozens of ornamental elements. Be deliberate: if a graphic carries any information a sighted user relies on, it is not decorative and needs real alt text. Reserve the decorative flag for elements that add nothing to comprehension when removed.

*Reference: WCAG 1.1.1 (A)*

### Describe data charts in words, not just alt text

A single alt-text line rarely does justice to a complex chart. For a chart that carries real data, write alt text summarizing the key takeaway (the trend, the outlier, the comparison), then make the underlying numbers available too. The cleanest approach is to place the source data in an accessible table on the same or an adjacent slide, or in the speaker notes, so a screen-reader user can reach the actual figures. Government dashboards and budget decks especially need this. Never rely on color alone in the chart to distinguish series; add patterns, direct labels, or distinct markers so the meaning survives in grayscale.

*Reference: WCAG 1.1.1 (A), 1.4.1 (A)*

### Build accessible tables with a real header row

Insert tables through Insert > Table so PowerPoint creates a genuine table structure, not a grid faked with text boxes or tab stops. Select the table, and on the Table Design tab enable "Header Row" so the top row is marked as headers that assistive tech can associate with each cell. Keep tables simple: avoid merged or split cells, nested tables, and blank cells used purely for spacing, all of which confuse linear reading. Do not use a table just to position content visually. For anything genuinely complex, split it into smaller tables or move the data to an accessible source document and summarize on the slide.

*Reference: WCAG 1.3.1 (A)*

### Never bake important text into an image

Text saved inside a screenshot, scanned flyer, or exported graphic is invisible to screen readers and blurs when users zoom. If a slide's message lives inside a picture (an infographic, a quote card, a pasted table image), rebuild it as live PowerPoint text and shapes, or at minimum move the full wording into alt text or the adjacent placeholder. This is common in remediation of agency decks that reuse marketing artwork. Live text also lets users change the theme, enlarge fonts, and search the content. When you must keep an image of text for fidelity, ensure the identical text is available in an accessible form on the same slide.

*Reference: WCAG 1.4.5 (AA)*

### Write link text that makes sense out of context

Screen-reader users often pull up a list of all links and hear them with no surrounding sentence, so "click here," "read more," and bare URLs like https://www.example.gov/dept/2025/report-final are useless or unpronounceable. To fix a link, select the descriptive words, press Ctrl+K (Insert > Link), and set the Text to display to something meaningful such as "2025 accessibility compliance report." Each link's visible text should describe its destination. If you must show a raw URL for print, still give it a readable text label. Consistent, unique link text across a deck also helps users tell similar destinations apart at a glance.

*Reference: WCAG 2.4.4 (A), 2.4.9 (AAA)*

### Meet contrast minimums for text on slides

Low-contrast text is one of the most common failures on branded government decks. Body text and other normal-size text need a contrast ratio of at least 4.5:1 against their background; large text (roughly 18pt, or 14pt bold, and up) needs 3:1. Check pairings with a contrast tool and adjust the theme colors in the slide master so every slide inherits compliant defaults. Watch for text placed over photos or gradients, where contrast varies across the image; add a solid or semi-opaque overlay behind the text if needed. Fixing contrast at the master level once beats recoloring text slide by slide.

*Reference: WCAG 1.4.3 (AA)*

### Don't rely on color alone to carry meaning

If red text means "overdue" and green means "on track," a colorblind user or anyone viewing a grayscale printout loses the message. Pair every color cue with a second signal: an icon, a text label, a shape, an asterisk, or a pattern fill. In a status table, add a word ("Complete," "Late") beside the colored cell. In a chart, use distinct markers or direct labels rather than a color-only legend. Review each slide by imagining it in black and white. This applies to hyperlinks too, where the built-in underline plus sufficient contrast keeps links identifiable without depending on the link color alone.

*Reference: WCAG 1.4.1 (A)*

### Keep speaker notes and on-slide content in sync

Speaker notes are a legitimate accessibility asset, but only if you use them consistently. Put narration, context, and full data details in the Notes pane (View > Notes Page) rather than cramming everything onto crowded slides. When a deck is distributed to be read rather than presented, remember that many exports and some assistive workflows do not surface notes automatically, so anything essential to understanding a slide must also exist in the accessible slide content or in the exported document. Use notes to expand and explain; do not use them as the only home for information a reader needs to grasp the slide.

*Reference: WCAG 1.3.1 (A)*

### Caption and describe embedded video and audio

If you embed video via Insert > Video, the content must be perceivable to users who cannot hear or cannot see it. Provide synchronized captions for all speech and important sounds; PowerPoint supports adding a caption file through Video Tools > Insert Captions using a WebVTT (.vtt) file. For content where meaningful visual information isn't conveyed by the audio, supply audio description or a text alternative on the slide. Embedded audio-only clips need a transcript. Don't set media to autoplay, which can startle users and collide with screen readers; let users start playback and reach the controls by keyboard.

*Reference: WCAG 1.2.2 (A), 1.2.5 (AA)*

### Run the built-in Accessibility Checker before every handoff

Review > Check Accessibility scans the deck and lists errors, warnings, and tips, with a "Why fix" explanation and one-click navigation to each flagged object. Errors (missing alt text, missing slide titles, unreadable table structure) are your priority; warnings (like duplicate titles or hard-to-read contrast) come next. Keep "Keep accessibility checker running while I work" enabled so a status indicator flags new issues as you build. Treat a clean checker as a floor, not a ceiling: it can't judge whether alt text is meaningful, whether reading order is logical, or whether link text is descriptive, so pair it with manual review and a screen-reader pass.

*Reference: ADA Title II; WCAG 2.1 AA*

### Bake accessibility into the slide master and layouts

Fix problems once at the source by editing View > Slide Master. In the master and each layout, set a readable default font and size, high-contrast theme colors, generous placeholder spacing, and correctly ordered title and content placeholders so every new slide inherits an accessible baseline. Give each layout a clear name (Slide Master > Rename) so authors pick the right structure. When you standardize a template for an agency, this prevents the recurring floating-text-box and low-contrast problems at scale. Distribute the fixed template as a .potx so future decks start compliant instead of requiring the same remediation over and over.

*Reference: WCAG 1.3.1 (A), 1.4.3 (AA)*

### Ensure the on-screen tab order is logical and complete

Beyond screen-reader reading order, keyboard users tab through interactive objects like hyperlinks, buttons, and media controls. Verify that tabbing moves through a slide in a sensible sequence and reaches every interactive element, matching the order you set in the Selection Pane. Remove keyboard traps where focus gets stuck in an embedded object. If you build slide-to-slide navigation with action buttons or linked shapes, confirm each is reachable and clearly labeled with alt text describing its action, such as "Go to next section." Test by pressing Tab repeatedly on a slide in normal editing view and watching where the focus lands.

*Reference: WCAG 2.1.1 (A), 2.4.3 (A)*

### Keep animations and transitions from harming comprehension

Flashy builds and transitions can confuse assistive tech and disorient or even harm users. Avoid content that flashes more than three times per second, which risks triggering seizures, and skip motion-heavy transitions like spins and bounces. If you use build animations to reveal bullets one at a time, make sure the full content is still reachable and correctly ordered for screen readers, and never make understanding depend on the timing of a motion. Prefer simple, fast fades over elaborate paths. Honor users who reduce motion by keeping effects optional and non-essential, so a static reading of the slide loses nothing.

*Reference: WCAG 2.3.1 (A), 2.2.2 (A)*

### Avoid automatic slide timings and moving content

Slides that advance on a timer or content that moves, blinks, or scrolls on its own can outpace users who need more time, especially screen-reader and low-vision users. Under the Transitions tab, uncheck "After" so slides advance only on click, and remove auto-looping. If any element animates for more than five seconds or repeats, give a way to pause, stop, or hide it. For kiosk or self-running decks common in public-facing government displays, provide an accessible alternative such as a static handout or a version the user controls. Let people set their own pace rather than forcing a rhythm on them.

*Reference: WCAG 2.2.1 (A), 2.2.2 (A)*

### Set the document language and title in file properties

Assistive tech uses the document language to choose the right pronunciation rules, so set it correctly. Confirm the editing language under Review > Language > Set Proofing Language for the deck, and mark any passages in another language individually. Also give the file a real title in File > Info > Properties (Title field), not just a filename, since screen readers and the exported PDF surface that title. A meaningful title like "City Council Budget Overview FY2026" orients users immediately. These metadata steps are easy to forget, take under a minute, and carry straight through when you export to PDF, so handle them before exporting.

*Reference: WCAG 3.1.1 (A), 3.1.2 (AA), 2.4.2 (A)*

### Make font size and spacing support low-vision readers

Slides projected in a room and slides read on a laptop have different needs, but both benefit from generous type. Use a clean sans-serif at a comfortable minimum (commonly 18pt or larger for body content) set in the master so every slide inherits it, and avoid all-caps runs, tight letter spacing, and italics for long passages, all of which reduce readability. Left-align body text rather than justifying it, which creates uneven "rivers" of space. Leave breathing room between lines and around placeholders. When remediating dense agency decks, cutting content per slide is often the real fix, since crowding forces the tiny fonts that fail low-vision users.

*Reference: WCAG 1.4.4 (AA), 1.4.8 (AAA)*

### Use real bulleted and numbered lists, not manual dashes

Create lists with the Home tab's bullet and numbering buttons inside a content placeholder so PowerPoint marks them as genuine lists that screen readers announce as such, including item counts and nesting levels. Typing a hyphen, asterisk, or number at the start of each line only looks like a list; it carries no structure, so assistive tech reads a flat run of text and users lose the grouping. Use the built-in demote and promote (Tab and Shift+Tab) to nest sub-points rather than indenting with spaces. Proper lists also survive the export to tagged PDF as list structures, preserving the hierarchy for downstream readers.

*Reference: WCAG 1.3.1 (A)*

### Export to a tagged, accessible PDF the right way

When you save a deck as PDF, preserve the accessibility work by using File > Save As (or Export) > PDF, then click Options and ensure "Document structure tags for accessibility" is checked; also enable "Document properties" so the title carries over. Do not print to PDF, which flattens everything and strips tags, alt text, and reading order. The tagged export turns titles, lists, tables, and reading order into a structured PDF that screen readers can navigate. After exporting, open the file in Acrobat and run its accessibility check to confirm tags, language, and title survived, then fix any reading-order issues in the tag tree.

*Reference: WCAG 1.3.1 (A); PDF/UA*

### Do a real screen-reader and keyboard pass before sign-off

Automated checks miss the judgment calls, so finish remediation by experiencing the deck the way a disabled user will. Turn on a screen reader (Narrator on Windows, VoiceOver on macOS) and move through each slide, listening for whether titles announce, reading order flows logically, alt text is meaningful, and links describe their destinations. Then unplug the mouse and navigate with Tab and arrow keys to confirm nothing is unreachable or trapped. Note anything that sounds wrong, is read out of order, or repeats needlessly, and fix it at the source in the Selection Pane, placeholders, or master. This final human pass is what separates "passes the checker" from genuinely usable.

*Reference: ADA Title II; WCAG 2.1 AA*
