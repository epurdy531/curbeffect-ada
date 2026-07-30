### Decide decorative vs. meaningful before you touch the code

Before writing any alt text, ask one question: does this image convey information the surrounding text does not, or does it serve a purpose (like a link)? If yes, it is meaningful and needs a description. If it is a divider, a background flourish, or a photo that only repeats what an adjacent caption already says, it is decorative. Meaningful images get a text alternative; decorative ones get marked so screen readers skip them. Making this call first prevents both empty alt on informative images and noisy, redundant announcements on purely visual ones. Document your reasoning for borderline cases so reviewers on your government or court site stay consistent.

*Reference: WCAG 1.1.1 (A)*

### Mark decorative images so assistive tech skips them

Once you decide an image is purely decorative, actively hide it rather than leaving alt undefined. In HTML, use an empty alt attribute (`alt=""`) on the `<img>` element; do not omit the attribute entirely, or some screen readers will read the filename aloud. For CSS or SVG decoration, add `role="presentation"` or `aria-hidden="true"`. In tagged PDFs, mark the figure as an Artifact using Acrobat Pro's Content or Tags panel so it is removed from the reading order. The goal is silence: a decorative border or spacer should produce nothing when a user tabs or arrows through the page.

*Reference: WCAG 1.1.1 (A); PDF/UA*

### Write alt text that conveys purpose, not appearance

Effective alt text answers "why is this image here?" rather than cataloguing every pixel. For a photo of a mayor signing an ordinance, "Mayor Reyes signs the 2027 accessibility ordinance" beats "Man in blue suit at wooden desk holding a pen." Match the description to the image's role in the page: the same photo might need different alt text on a news article versus a staff directory. Keep it concise, skip subjective embellishment, and include only details that matter to understanding the content. Read the sentence around the image first; the alt text should let a non-sighted reader follow the same point a sighted reader gets.

*Reference: WCAG 1.1.1 (A)*

### Drop "image of" and "graphic of" from alt text

Screen readers already announce an element as an image or graphic before reading its alt text, so starting with "Image of a courthouse" produces the redundant "graphic, image of a courthouse." Strip these lead-ins and jump straight to the content: "The county courthouse's accessible ramp entrance." Similar filler to cut includes "picture of," "photo showing," and "logo of" when the role is already clear. The rare exception is when the medium itself is the point, such as distinguishing "Oil painting of the founder" from a photograph. Otherwise, lead with the substance and let the assistive technology supply the object type.

*Reference: WCAG 1.1.1 (A)*

### Keep alt text short; move long explanations elsewhere

Alt text is meant to be a brief equivalent, and many screen readers handle short strings best. Aim to convey the essential meaning in roughly a sentence, generally under about 150 characters. If an image genuinely needs more, such as a detailed chart or a process diagram, the image is "complex" and its explanation belongs in a long description or in adjacent body text, not stuffed into the alt attribute. A wall of text in alt is hard to navigate because users cannot pause, rewind, or skim it. Give a concise alt that names what the image is, then link or point to the full detail nearby.

*Reference: WCAG 1.1.1 (A)*

### Describe functional images by their action, not their picture

When an image is a link or a button, the alt text must describe where it goes or what it does, not what it depicts. A magnifying-glass icon that submits a search should have alt like "Search," not "Magnifying glass." A logo in the header that links home should read "City of Fairview home," not "City seal." For icon buttons with no visible text, provide the label via `alt` on the `<img>`, or `aria-label`/`aria-labelledby` on the control. Test by tabbing to the control and confirming the screen reader announces a sensible action plus its role, such as "Search, button."

*Reference: WCAG 1.1.1 (A), 2.4.4 (A)*

### Avoid double announcements when an image sits inside a link

If a linked image also has adjacent visible text inside the same anchor, giving the image descriptive alt causes the link to be announced twice. For example, an `<a>` containing a document-icon image plus the text "Annual Report" should have `alt=""` on the icon so the screen reader reads only "Annual Report, link." Reserve descriptive alt for the icon only when it carries the sole meaning of the link. The rule: the accessible name of the whole link should be spoken once and be meaningful. Check each linked image by listening to how the entire link reads, not just the image in isolation.

*Reference: WCAG 2.4.4 (A), 1.1.1 (A)*

### Treat charts and graphs as complex images needing full data

A bar chart of permit-processing times is not adequately served by "Bar chart of permits." Users need the underlying information: the trend and, ideally, the numbers. Provide a short alt naming the chart and its main takeaway ("Permit wait times fell from 30 to 12 days, 2023-2027"), then supply the full data in an accessible HTML data table adjacent to or linked from the image. The table is the true equivalent and doubles as a benefit for sighted users. For court and government dashboards, publishing the source data table beside every chart is the most robust and maintainable long-description strategy.

*Reference: WCAG 1.1.1 (A)*

### Provide long descriptions for diagrams and infographics

Infographics and process diagrams pack layered meaning that no short alt can hold. Give the image a concise alt that states its title and purpose, then place the complete explanation in nearby content a screen reader can reach: a paragraph below the figure, a collapsible "Long description" disclosure, or a linked page. Structure the long description the way the graphic reads, walking through each step, node, or region in logical order. Avoid the deprecated `longdesc` attribute since support is poor; a visible in-page description serves everyone, including sighted users who find the infographic dense. This keeps your organization's public-service explainers usable without sight.

*Reference: WCAG 1.1.1 (A)*

### Never lock essential text inside a flat image

Text baked into a JPEG or PNG, such as a "Boil Water Notice" banner or a hours-of-operation graphic, cannot be resized, recolored, read by a screen reader, or translated. Rebuild it as real HTML text styled with CSS so it scales and reflows. If a purely visual design element must contain text, ensure the same words appear as actual text elsewhere and give the image full alt as a fallback. Logos are the main allowed exception. For government notices, scanned flyers are a frequent failure; converting the flyer content to live text is usually the fastest path to compliance and to letting residents zoom without pixelation.

*Reference: WCAG 1.4.5 (AA)*

### Understand CSS-background vs. content images

Where an image lives determines how you make it accessible. Content images belong in the HTML as `<img>` or inline `<svg>` and carry meaning, so they need alt text. CSS `background-image` is meant for decoration and is invisible to assistive technology, so never put informative images there without a text alternative. The practical rule: if a user would miss information without the image, it must be a content image with alt, not a CSS background. During remediation, watch for meaningful graphics wrongly set as backgrounds; move them into markup or add an equivalent via an adjacent element with proper labeling so the content is not lost to screen reader users.

*Reference: WCAG 1.1.1 (A)*

### Render math as MathML, not as flat images

Equations saved as images are opaque to screen readers and math-reading tools, and they blur when zoomed. Publish math as MathML instead, which assistive technologies can speak and navigate symbol by symbol, or use MathJax, which outputs accessible MathML from LaTeX-style source. If you inherit a page or PDF where an equation is only an image, provide alt text that speaks the expression clearly, for example "x equals negative b plus or minus the square root of b squared minus 4 a c, all over 2 a." MathML is the durable fix; alt text on an image is a stopgap for court filings or agency documents you cannot regenerate.

*Reference: WCAG 1.1.1 (A)*

### Give maps a real text alternative, not just alt

An embedded map conveys location and routing that a short alt cannot replace, and the underlying tiles are usually inaccessible. Alongside the interactive map, provide the same information as text: the street address, nearby cross streets, transit options, and step-by-step directions. For a "find a polling place" or "office locations" map, include an accessible list or table of addresses so users who cannot see or operate the map still get the destinations. Static map images get concise alt naming what they show. The principle is equivalence: whatever wayfinding a sighted user extracts from the map should be available in reachable text.

*Reference: WCAG 1.1.1 (A)*

### Connect figures and captions programmatically

A caption near an image is only reliably linked for assistive tech when the markup says so. In HTML, wrap the image and caption in `<figure>` and `<figcaption>`; screen readers then associate the caption with the figure. Remember that a caption is not a substitute for alt text: the caption is visible to everyone and often adds context, while the alt conveys the image's own content. If the caption fully describes the image, you may give the image an empty alt to avoid duplication, but decide deliberately. In tagged PDFs, use the Figure tag with a caption relationship so the pairing survives export.

*Reference: WCAG 1.1.1 (A); PDF/UA*

### Add alt text and mark artifacts in tagged PDFs

For PDFs, meaningful images need alternate text set on the Figure tag, and decorative graphics must be marked as Artifacts so they leave the reading order. In Acrobat Pro, open the Tags panel, find the `<Figure>` element, choose Properties, and enter the alternate text; or use the Reading Order tool to tag a region as Figure and add its description. To retire a decorative graphic, right-click it in the Content or Reading Order panel and change it to an Artifact. Run the Accessibility Checker afterward: "Figures alternate text" flags any image still missing alt, which is a common failure in scanned government forms.

*Reference: PDF/UA; WCAG 1.1.1 (A)*

### Give informative SVGs an accessible name and role

Inline SVG icons and illustrations need explicit accessibility handling because default exposure varies across browsers. For a meaningful SVG, add `role="img"` and provide a name via `aria-label`, or include a `<title>` element as the first child referenced by `aria-labelledby`. For a decorative SVG, add `aria-hidden="true"` and `focusable="false"` so it is skipped and does not trap keyboard focus in older browsers. When an SVG acts as a button or link, put the accessible name on the interactive parent and hide the SVG itself. Test in a screen reader, since SVG accessibility is inconsistent and silent failures are easy to miss.

*Reference: WCAG 1.1.1 (A)*

### Give every meaningful image unique, context-appropriate alt

Duplicated boilerplate alt text, such as every headshot in a staff directory reading "employee photo," gives users no way to tell entries apart. Make each meaningful image's alt specific to its content and context: "Jane Okafor, Director of Public Works." The same is true for repeated icons that lead to different targets; each should name its own destination. During bulk remediation of a CMS, resist scripts that stamp identical alt across many images. Instead, generate alt from the associated data, like the person's name or the linked document's title, so each equivalent is distinct and actually useful to someone navigating by image or link.

*Reference: WCAG 1.1.1 (A)*

### Match a chart's alt text to its purpose, not its type

A single chart image can serve different points, so let the surrounding argument drive the alt. If the article's claim is "response times improved," the alt should surface that conclusion plus the key figures, not merely "line graph with four data series." When the chart is illustrative and the exact numbers appear in the text already, a brief alt naming the chart may suffice; when the chart is the primary evidence, pair it with the full data table. Ask what a sighted reader is meant to take away from this specific chart in this specific place, then write the alt to deliver that same takeaway.

*Reference: WCAG 1.1.1 (A)*

### Handle image galleries and thumbnails deliberately

Photo galleries and thumbnail grids create repetitive noise if every image gets verbose alt. Decide the gallery's purpose first. If images are illustrative and captions carry the meaning, use `<figure>`/`<figcaption>` and give thumbnails concise or empty alt to avoid double-reading. If each image is itself informative, write distinct alt per image. For thumbnail links that open larger versions, the alt should describe the destination content, not say "thumbnail." Group related controls with clear labels so a screen reader user can grasp the set and skip past it. The aim is a gallery that is browsable, not a stream of near-identical announcements that bury the useful items.

*Reference: WCAG 1.1.1 (A)*

### Do not rely on color or shape alone inside images

When an image encodes meaning through color or position only, blind and colorblind users lose it. A status graphic using red, yellow, and green dots must also carry text or patterns that distinguish the states, and its alt or adjacent legend must spell them out ("Service status: Water Treatment - Operational, Road Maintenance - Delayed"). Charts should differentiate series with labels, textures, or direct annotations, not hue alone. When you write alt for such images, translate the color-coded meaning into words rather than describing the colors. This pairs the general "don't rely on color" rule with image work, ensuring the informational payload survives without sight or color perception.

*Reference: WCAG 1.4.1 (A), 1.1.1 (A)*

### Fix "null" and filename alt text during audits

Automated scans and legacy CMS content frequently leave alt attributes set to a filename ("IMG_4821.jpg"), a placeholder like "image," or literally "null," all of which are useless to a screen reader user. During remediation, list every meaningful image with such junk alt and rewrite each to a real equivalent based on its content and role. Filenames in particular leak nothing about meaning and often read as strings of characters. Do not "fix" these by simply emptying the alt unless the image is genuinely decorative, since that hides real content. Prioritize images inside links and primary content areas, where bad alt most directly blocks task completion.

*Reference: WCAG 1.1.1 (A)*

### Provide accessible alternatives for CAPTCHA and text-in-image verification

Image-based CAPTCHAs that require reading distorted text or picking objects from pictures block users who cannot see them, a real barrier on government service portals. Where a CAPTCHA is used, offer at least one non-visual alternative using a different sensory modality, such as an audio challenge, and prefer modern approaches like non-interactive or honeypot methods that avoid image puzzles entirely. Ensure any CAPTCHA control has a proper label and clear instructions. Because this sits at the entry point of forms for benefits, permits, or court filings, an inaccessible image challenge can lock people out of essential services, so treat its alternative as mandatory, not optional.

*Reference: WCAG 1.1.1 (A)*
