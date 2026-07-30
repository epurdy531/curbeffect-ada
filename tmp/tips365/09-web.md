### Title II covers your whole public website

For a US state or local government, ADA Title II reaches every web page and web application the public can use - permit portals, agendas, payment systems, job listings, and news pages alike. It is not limited to a few "important" pages. When you scope a remediation project, inventory the full site plus any subdomains and third-party portals linked from it, then set WCAG 2.1 Level AA as the conformance target the Department of Justice's 2024 rule points to. Prioritize high-traffic and transactional flows first, but plan to reach every template and content type. Treat "we fixed the homepage" as a start, not compliance, and document remaining pages with a dated remediation schedule.

*Reference: ADA Title II; WCAG 2.1 AA*

### Build pages on semantic HTML landmarks

Give each page one `<header>`, one `<main>`, one `<nav>`, and a `<footer>` so assistive technology can identify and jump between regions. Screen reader users pull up a landmarks list to navigate; without regions they must read linearly. Use native elements rather than `<div role="banner">` wrappers - the element carries the role for free. If you have multiple navigations (primary menu, breadcrumb, utility links), distinguish them with `aria-label`, for example `<nav aria-label="Main">` and `<nav aria-label="Breadcrumb">`. Ensure all visible content sits inside a landmark; orphaned text outside any region is easy to miss. Test in VoiceOver's rotor or NVDA's element list to confirm the structure reads sensibly.

*Reference: WCAG 1.3.1 (A); ARIA landmarks*

### Keep a single logical heading outline

Every page needs exactly one `<h1>` naming the page's main topic, followed by `<h2>` through `<h6>` in a nested outline with no skipped levels - don't jump from `<h2>` to `<h4>`. Headings are how screen reader users skim; NVDA's H key and VoiceOver's rotor move heading to heading. Never pick a heading tag for its visual size - style with CSS instead, and never bold a paragraph to fake a heading. On government sites, section titles like "Apply for a Permit" or "Council Agenda" should be real headings so the structure matches what sighted users see. Run a quick outline check with the browser's accessibility tree or a headings-map extension.

*Reference: WCAG 1.3.1 (A), 2.4.6 (AA)*

### Write alt text that conveys purpose

Every meaningful `<img>` needs an `alt` attribute describing its purpose in context, not a literal pixel description. A city seal linking home might be `alt="City of Springfield home"`; a chart needs its data point summarized nearby or in a caption. Decorative images - dividers, background flourishes - take an empty `alt=""` so screen readers skip them; never omit the attribute entirely, which makes some readers announce the file name. Avoid "image of" or "photo of" - the reader already says "graphic." For text embedded in an image (a flyer of a public meeting), put every word of that text in the alt or, better, replace the image with real HTML text. Keep alt concise, roughly a sentence.

*Reference: WCAG 1.1.1 (A)*

### Label every form field programmatically

Each input needs a programmatic label, not just visually adjacent text. Use `<label for="email">Email</label>` matched to `<input id="email">`, or wrap the input inside the `<label>`. Placeholder text is not a label - it vanishes on typing and often fails contrast. For fields with no visible label, such as a search box with only an icon, supply `aria-label="Search"`. Group related controls like a set of radio buttons inside `<fieldset>` with a `<legend>`. On public forms - benefits applications, records requests - a missing label leaves screen reader users hearing only "edit text," unsure what to type. Verify by clicking each visible label and confirming focus jumps to its field.

*Reference: WCAG 1.3.1 (A), 3.3.2 (A)*

### Make everything operable by keyboard

Every interactive element must work with the keyboard alone: Tab to reach it, Enter or Space to activate, arrow keys inside composite widgets like menus and tab panels. Unplug your mouse and try to complete a permit application or pay a bill start to finish. Native `<a>`, `<button>`, `<input>`, and `<select>` are keyboard-operable by default - problems usually come from clickable `<div>` and `<span>` handlers that never receive focus. If you must make a custom control, add `tabindex="0"` and wire key handlers. Watch for keyboard traps where focus enters a widget or modal and cannot Tab out. Keyboard access underpins switch users, voice control, and many screen reader users.

*Reference: WCAG 2.1.1 (A), 2.1.2 (A)*

### Show a visible focus indicator

As focus moves with the Tab key, users must see which element is active. Browsers draw a default outline; if your CSS reset includes `outline: none` or `*:focus { outline: 0 }`, you have removed a required indicator. Restore a strong, high-contrast style - for example `:focus-visible { outline: 3px solid #005fcc; outline-offset: 2px; }` - so it stands out against every background. `:focus-visible` shows the ring for keyboard users without adding it on mouse clicks. Check links, buttons, form fields, and custom widgets alike. On a government site, a keyboard user filling out a long form must always know where they are, or they will lose their place and abandon the task.

*Reference: WCAG 2.4.7 (AA)*

### Keep focus order logical

When someone Tabs through a page, focus should move in an order that matches the visual reading sequence and preserves meaning - generally left to right, top to bottom. Problems arise when CSS like flexbox `order` or absolute positioning rearranges elements visually while the DOM order stays different; focus then jumps around unpredictably. Fix it by ordering the HTML source itself, not by patching with positive `tabindex` values, which create brittle, hard-to-maintain sequences. Avoid `tabindex` greater than zero entirely. When a modal opens, move focus into it and return focus to the trigger on close. Tab slowly through each page and confirm the highlight travels a sensible path with no surprising leaps.

*Reference: WCAG 2.4.3 (A)*

### Add a skip-to-content link

Put a "Skip to main content" link as the first focusable item on every page so keyboard and screen reader users can bypass the repeated banner and navigation and land on the unique content. Target your main region: `<a href="#main" class="skip">Skip to main content</a>` paired with `<main id="main">`. Keep it visually hidden until focused, then reveal it on `:focus` so sighted keyboard users see it too - never leave it permanently invisible or it won't work. On government sites with large mega-menus, this can save dozens of Tab presses per page. Test by loading the page and pressing Tab once - the skip link should appear and, when activated, move focus into the main content.

*Reference: WCAG 2.4.1 (A)*

### Meet text color contrast 4.5 to 1

Normal-size body text must have a contrast ratio of at least 4.5:1 against its background; large text (about 18pt, or 14pt bold, and up) needs 3:1. Check pairs with a tool like the TPGi Colour Contrast Analyser or the contrast readout in Chrome DevTools' color picker. Watch for common failures on government sites: light gray "helper" text, placeholder text, link colors on tinted panels, and white text over photo hero images. Text over images needs a solid overlay or scrim to guarantee the ratio everywhere. Remember contrast is about the color pairing, not font size alone. Record the hex values you approve so designers reuse compliant combinations rather than re-testing each time.

*Reference: WCAG 1.4.3 (AA)*

### Meet non-text contrast for UI and graphics

Interactive component boundaries and meaningful graphical elements need at least 3:1 contrast against adjacent colors. That covers the visible edge of a text input, the outline of a button, checkbox and radio borders, focus indicators, toggle states, and icons that carry meaning like a required-field asterisk or a chart's data lines. A faint 1px gray border around a form field on a white background commonly fails. It also applies to the parts of a control that convey state - the fill of a selected toggle. On a public form, users must be able to see where a field is even before typing. Test borders and icons, not just text, with your contrast tool.

*Reference: WCAG 1.4.11 (AA)*

### Support 200% text resize

Users must be able to enlarge text to 200% without losing content or breaking the layout. Test with the browser's own zoom - Ctrl/Cmd and plus - up to 200% and confirm nothing overlaps, gets clipped, or disappears behind other elements. The key technique is relative units: set font sizes in `rem` or `em` and container widths that flex, rather than fixed `px` heights that cause text to spill out of buttons and boxes. Avoid `maximum-scale=1` or `user-scalable=no` in the viewport meta tag, which blocks pinch-zoom on mobile. Older government templates with rigid table layouts are frequent offenders. Verify navigation menus, form fields, and data tables all remain usable at 200%.

*Reference: WCAG 1.4.4 (AA)*

### Reflow content at 400% zoom

At 400% zoom - equivalent to a 320 CSS-pixel-wide viewport - content must reflow into a single column with no loss of information and no two-dimensional scrolling, except for things that genuinely need it like data tables, maps, and complex diagrams. Build with responsive CSS: fluid grids, media queries, and `max-width: 100%` on images and embeds. Test by setting the browser window to 1280px wide and zooming to 400%, or use responsive design mode at 320px. Watch for fixed-width sidebars, wide hero banners, and horizontally scrolling menus that force side-to-side scrolling. On government sites this makes content usable on phones and for low-vision users at high magnification. Reflow and resize are related but distinct requirements - check both.

*Reference: WCAG 1.4.10 (AA)*

### Make link text describe its destination

A link's text should tell users where it goes when read on its own, because screen reader users often pull up a links list out of context. Replace "click here," "read more," and "learn more" repeated across a page with meaningful text like "Read the 2026 budget summary" or "Apply for a business license." If design constraints force generic visible text, extend it with an `aria-label` or visually hidden span that adds the specifics. Avoid multiple links with identical text pointing to different destinations. On agenda and document-heavy government pages, "PDF" repeated twenty times is useless; name each document. Never use a bare URL as link text for a long address - it reads character by character.

*Reference: WCAG 2.4.4 (A), 2.4.9 (AAA for text-only)*

### Prefer native HTML over ARIA

The first rule of ARIA is: if a native HTML element gives you the semantics and behavior you need, use it instead of recreating them with ARIA. A real `<button>` is focusable, keyboard-operable, and announced as a button automatically; `<div role="button">` gives you none of that behavior and forces you to add `tabindex`, key handlers, and state management by hand. ARIA only changes how assistive technology describes an element - it adds no functionality. Reserve ARIA for genuinely custom widgets that have no native equivalent. Before reaching for a role, ask whether a `<button>`, `<a>`, `<select>`, `<details>`, or `<input>` already does the job. On government sites, favoring native elements dramatically reduces bugs.

*Reference: WCAG 4.1.2 (A); ARIA Authoring Practices*

### No ARIA is better than bad ARIA

Incorrect ARIA actively harms users, so remove it when you're unsure. A wrong `role`, a stale `aria-expanded`, an `aria-hidden="true"` on something focusable, or an `aria-labelledby` pointing to a missing ID can make a screen reader announce nonsense or hide working content. Common damage: `aria-hidden="true"` on a wrapper that still contains a keyboard-focusable link, so the user tabs into an element the reader won't name. Don't sprinkle roles defensively. Every ARIA attribute you add is a promise you must keep updated in JavaScript as state changes. Audit existing markup for redundant roles like `role="button"` on a real `<button>`. When a validator flags ARIA and you can't verify it, deleting it is usually the safer fix.

*Reference: WCAG 4.1.2 (A); ARIA rules of use*

### Expose name, role, and value for custom controls

Any custom widget - a toggle, dropdown, slider, tab set - must expose its name, role, and current value or state to assistive technology, and update them as things change. A custom toggle needs an accessible name (visible label or `aria-label`), a role (`role="switch"` or a real `<button>`), and a state (`aria-checked` or `aria-pressed`) that your JavaScript flips on each click. A disclosure widget needs `aria-expanded` toggling true/false as it opens and closes. Without these, a screen reader might announce "clickable" with no indication of what it is or whether it's on. Follow the ARIA Authoring Practices patterns for the specific widget, and test that state changes are actually announced, not just visually shown.

*Reference: WCAG 4.1.2 (A)*

### Identify form errors in text

When a form submission fails validation, identify each error in text and describe what went wrong - don't rely on a red border alone, which color-blind and screen reader users can miss. Put a specific message next to the field ("Enter a valid 5-digit ZIP code") and associate it via `aria-describedby` so the reader announces it when focus lands. Set `aria-invalid="true"` on the failed field. Provide a summary at the top listing every error as links to the fields, so users don't hunt through a long benefits application. Move focus to that summary on submit. Generic "form has errors" without saying which field frustrates everyone; name the field and the fix.

*Reference: WCAG 3.3.1 (A)*

### Suggest how to fix input errors

Beyond flagging that a field is wrong, tell the user how to correct it when you know the expected format. Instead of "Invalid date," say "Enter the date as MM/DD/YYYY." Instead of "Invalid input" on a phone field, say "Enter a 10-digit phone number, digits only." For a required field left blank, name what's needed. Where there is a limited set of valid values, suggest them. This matters on government forms where a rejected records request or license application may cost the user a trip or a deadline. Provide the suggestion in text tied to the field with `aria-describedby` so both sighted and screen reader users get it. Only skip suggestions where revealing valid values would undermine security, like a password.

*Reference: WCAG 3.3.3 (AA)*

### Announce status messages with live regions

When something changes without a page reload - "3 results found," "Item added to cart," "Form saved," a spinner finishing - screen reader users need it announced without moving their focus. Use an ARIA live region: a container with `role="status"` (polite) for routine updates or `role="alert"` (assertive) for urgent ones, and write the message text into it via JavaScript. The element must already exist in the DOM before you update its contents, and it should stay empty until there's something to say. Use polite for search-result counts and confirmations; reserve assertive for errors that need immediate attention. Test with a screen reader running - visually seeing the message is not enough to know it was announced.

*Reference: WCAG 4.1.3 (AA)*

### Don't lock content to one orientation

Content must not be restricted to a single display orientation such as portrait-only or landscape-only, unless a specific orientation is essential. A person with a device mounted to a wheelchair may not be able to rotate their phone, so a public-facing site that forces landscape locks them out. Avoid CSS like `@media screen and (orientation: portrait) { body { display: none } }` or scripts that block rotation, and don't rely on orientation-locking meta directives. Design layouts to reflow in both orientations. On government mobile sites - transit schedules, alerts, payment portals - both orientations should work. Genuine exceptions are rare, like a piano app or a check-deposit camera view; a typical informational page never qualifies.

*Reference: WCAG 1.3.4 (AA)*

### Set input purpose with autocomplete

For fields that collect the user's own information - name, email, address, phone - add the HTML `autocomplete` attribute with the correct token, like `autocomplete="email"`, `autocomplete="given-name"`, `autocomplete="postal-code"`. This lets browsers and assistive tech autofill reliably and lets some tools present familiar icons or purposes, easing long forms for people with cognitive or motor disabilities. It also cuts errors and speeds completion on government applications with many personal-data fields. Use the standardized token names from the HTML spec; a wrong token can misfile data. This complements, not replaces, a proper visible label and `<label>` association. Only tag fields asking for the user's own information - a field for someone else's data or a search box doesn't take these purpose tokens.

*Reference: WCAG 1.3.5 (AA)*

### Give touch targets adequate size and spacing

Make interactive targets big enough and spaced enough to tap without hitting the wrong one - aim for at least 24 by 24 CSS pixels (the 2.1 minimum) and ideally 44 by 44 for comfort, or add margin so smaller controls aren't crowded. Tightly packed icon buttons, closely stacked menu links, and tiny "x" close controls are common failures on government mobile sites. If a target must be small, ensure surrounding spacing keeps its 24px tap zone clear of neighbors. This helps people with tremors, limited dexterity, or large fingers avoid mis-taps on a transit-fare or bill-pay screen. Also support simple pointer input: don't require complex path-based gestures without a single-tap alternative.

*Reference: WCAG 2.5.5 (AAA), 2.5.8 (AA in 2.2)*

### Let users pause, stop, or hide motion

Any content that moves, blinks, scrolls, or auto-updates for more than five seconds - a carousel, a news ticker, an animated alert banner - must give users a way to pause, stop, or hide it. Auto-advancing hero sliders on government homepages are the classic offender: they move faster than some people can read and distract users with attention or cognitive disabilities. Add a clearly labeled, keyboard-operable pause button, and pause on hover and on focus. Better yet, don't auto-advance at all - let users click to move between slides. The same applies to auto-refreshing dashboards and marquee text. If the motion stops on its own within five seconds, you're fine; anything longer needs a control.

*Reference: WCAG 2.2.2 (A)*

### Respect reduced motion and limit interaction animation

Non-essential animation triggered by interaction or scrolling - parallax, big zoom transitions, content that flies in as you scroll - can cause nausea and dizziness for people with vestibular disorders, so provide a way to turn it off. The cleanest approach is honoring the OS setting with a media query: `@media (prefers-reduced-motion: reduce) { * { animation: none !important; transition: none !important; } }`, or swap dramatic movement for a simple fade. This lets users who've asked their device to minimize motion browse your permit or payment flow comfortably. Keep motion that is essential to meaning, but make decorative movement optional. Test by enabling "Reduce motion" in your OS accessibility settings and confirming the flashy effects quiet down.

*Reference: WCAG 2.3.1 (A) plus 2.3.3 (AAA)*

### Caption video posted on your site

Every pre-recorded video with audio - a council meeting recording, a how-to on renewing a license, a public-service announcement - needs synchronized captions conveying speech and important sounds. Auto-generated YouTube captions are a starting draft, not compliant: correct the names, technical terms, and punctuation before publishing. Provide captions as a real track (a WebVTT file on a `<track kind="captions">` for self-hosted video, or an uploaded transcript file on your hosting platform), not burned-in text a user can't toggle. For public entities, meeting videos are core content and frequently the subject of complaints. Also confirm the player's own controls are keyboard-operable and labeled. Captions serve deaf and hard-of-hearing users and anyone watching without sound.

*Reference: WCAG 1.2.2 (A)*

### Provide audio description or a transcript for video

When a video conveys visual information not present in its audio track - a chart on screen, a demonstrated form, an on-screen phone number the narrator doesn't read - sighted users get information that blind users miss. Address it with audio description: either add a described audio track, or write the narration so it speaks the on-screen details in the first place, which is often easiest to plan up front. A full text transcript that includes both spoken words and the visual content is a practical, widely useful companion, and for audio-only content a transcript is the core requirement. On government sites, post the transcript alongside the video so it's also searchable and printable. Confirm nothing meaningful lives only in the picture.

*Reference: WCAG 1.2.3 (A), 1.2.5 (AA)*

### Give every page a descriptive title and lang

Set a unique, descriptive `<title>` for each page that names the page first, then the site - "Apply for a Building Permit - City of Springfield" - because it's the first thing a screen reader announces on load and it labels browser tabs and bookmarks. Avoid every page reading just "Home" or the site name alone. Also declare the page's language with `<html lang="en">` so screen readers use the correct pronunciation rules; mark inline passages in another language with `lang` on that element, for example a Spanish notice wrapped in `<span lang="es">`. Government sites serving multilingual communities especially benefit. These two small attributes are quick wins that affect every page and every assistive-tech user.

*Reference: WCAG 2.4.2 (A), 3.1.1 (A), 3.1.2 (AA)*

### Mark up data tables correctly

Use real HTML tables for tabular data - budgets, meeting schedules, fee lists - and never for page layout. Give each column or row header a `<th>` with the right `scope="col"` or `scope="row"` so screen readers announce the header when reading each cell, letting users understand a number in isolation. Add a `<caption>` naming the table's subject. For complex tables with multiple header levels, associate cells using `headers` and `id`. Avoid merged cells and nested tables where you can - they confuse assistive tech. If your content is really a form or a list, use those elements instead. Test by navigating cell to cell with a screen reader's table keys and confirming each cell announces its headers.

*Reference: WCAG 1.3.1 (A)*

### Remediate PDFs and documents you post, too

Title II conformance doesn't stop at HTML - the PDFs, Word files, and PowerPoint decks you post are web content and must also meet WCAG 2.1 AA. A perfectly accessible page linking to an untagged scanned PDF budget still fails the user who can't read it. Where you can, offer the information as an HTML page instead of a document, which is usually more accessible and mobile-friendly. When a PDF is necessary, tag it properly - reading order, headings, alt text, real text not a scanned image, a document title, and a language setting - using Acrobat Pro's accessibility tools. Prioritize forms and high-traffic documents. Keep a log of remediated files so re-uploads don't quietly reintroduce inaccessible versions.

*Reference: ADA Title II; WCAG 2.1 AA; PDF/UA*

### You own third-party and embedded widgets

Embedded and third-party components on your public site - a payment iframe, a chat bot, an agenda-management portal, a mapping widget, a Google Translate bar - are part of your service, and Title II responsibility doesn't transfer to the vendor just because you didn't build them. Inventory every embed and test each with keyboard and screen reader. Request each vendor's current ACR or VPAT and treat gaps as procurement issues; bake WCAG 2.1 AA into contracts and renewals. Where a widget is inaccessible and can't be fixed quickly, provide an accessible alternative path - a phone number, an accessible form, an alternate page - so no one is blocked. Don't let "it's the vendor's code" become the reason a resident can't pay a bill.

*Reference: ADA Title II; WCAG 2.1 AA*

### Don't convey information by color alone

Never use color as the only way to communicate meaning, because color-blind and low-vision users may not perceive the distinction. A required form field marked only by a red label, a status shown only as a green or red dot, "items in red are overdue," or a chart whose series are told apart only by hue all fail. Add a second cue: an asterisk plus the word "required," a text label or icon beside the colored dot, patterns or direct labels on chart segments, and underlines on in-text links so they're distinguishable from body text. This is common on government dashboards and fee tables. Review each place you use color and confirm the meaning survives in grayscale.

*Reference: WCAG 1.4.1 (A)*

### Give links a non-color cue in body text

Links inside paragraphs must be distinguishable from surrounding text by more than color, or set the surrounding relationship so the difference itself meets 3:1 contrast against the body text plus shows another cue on hover and focus. The simplest reliable fix is to underline in-content links. A blue link in black text can be invisible to someone with color blindness, so they never realize it's clickable. Reserve removing underlines for clearly link-styled areas like a nav bar where context makes the links obvious. On dense government pages full of inline links to forms and codes, underlining is the safest default. Confirm links remain identifiable when you view the page in grayscale, and that hover and focus add a visible change.

*Reference: WCAG 1.4.1 (A)*

### Avoid flashing that can trigger seizures

Nothing on the page may flash more than three times in any one-second period, or it must stay under the accepted general and red-flash thresholds, because flashing content can trigger photosensitive seizures. This rules out rapidly blinking banners, strobing animations, autoplay video with quick bright cuts, and flashing emergency-alert graphics. On a public-safety or alerts page the temptation to grab attention with flashing is real - use color, motion under three flashes per second, or a steady prominent style instead. If you host user or vendor video, screen it. Tools like the Photosensitive Epilepsy Analysis Tool (PEAT) can check questionable clips. When in doubt, slow it down or make it static; this is a health-and-safety line, not a style preference.

*Reference: WCAG 2.3.1 (A)*

### Test with both keyboard and a screen reader

Automated scanners catch only a portion of issues - roughly a third by common estimates - so manual testing is essential. Do a keyboard-only pass: unplug the mouse and Tab through each page, confirming you can reach and operate everything, focus is visible, order is logical, and nothing traps you. Then run a screen reader on your real target platform: NVDA or JAWS with Firefox or Chrome on Windows, VoiceOver with Safari on Mac and iOS. Listen through a full task - apply for a permit, pay a fee - and check that labels, headings, errors, and status messages all announce correctly. Test with actual assistive tech, not just the browser's accessibility tree. Build this into every release so regressions on your public site get caught early.

*Reference: WCAG 2.1 AA; ADA Title II*

### Don't rely on hover-only content

Content that appears only on mouse hover - tooltips, dropdown submenus, definitions - excludes keyboard and touch users and can be a barrier under the content-on-hover-or-focus rule. Make sure anything shown on hover also appears on keyboard focus, stays visible long enough to read, doesn't disappear the moment the pointer moves toward it, and can be dismissed with Escape without moving focus. A navigation mega-menu that only opens on hover leaves keyboard users unable to reach its links; wire it to focus and clicks too. Tooltips carrying real information (a form-field hint) should be reachable and dismissible, and ideally the information should also live in persistent text. Test menus and tooltips with the keyboard, not just the mouse.

*Reference: WCAG 1.4.13 (AA)*

### Offer more than one way to find a page

Don't force visitors down a single path to reach content. WCAG's Multiple Ways criterion asks that users be able to locate any page in at least two ways, because people navigate differently - some scan a menu, others search, others follow related links. On a public-entity site, pair your main navigation with at least one of: a working site search, an HTML sitemap, an A-Z index, or clear breadcrumb and related-link trails. This matters for someone using a screen reader or magnifier who finds deep menu diving slow and error-prone; a search box or sitemap lets them jump straight to a permit form or board agenda. The exception is a page that's a step inside a process (like a checkout), which is allowed to have one path.

*Reference: WCAG 2.4.5 (AA); ADA Title II*
