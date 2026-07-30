### Check body text against the 4.5:1 minimum

Normal-size text needs a contrast ratio of at least 4.5:1 against its background. "Normal" means below roughly 18pt (24px) regular weight or 14pt (18.66px) bold. Drop the exact foreground and background hex values into a contrast checker such as the TPGi Colour Contrast Analyser or WebAIM's contrast checker, and read the AA result. If a value like #767676 gray-on-white passes at exactly 4.54:1, treat that as a hard floor, not a target — nudge darker for comfort. When a color fails, adjust lightness rather than hue so the brand color stays recognizable. Log the tested pairs so you don't re-check the same combination on every page.

*Reference: WCAG 1.4.3 (AA)*

### Large text only needs 3:1

Text that is at least 18pt (24px) at normal weight, or 14pt (18.66px) bold, qualifies as "large" and only needs a 3:1 contrast ratio. This gives you room to use lighter grays or softer brand tints for big headings and hero copy that would fail as body text. Confirm the computed font-size in the browser DevTools "Computed" panel before you rely on the relaxed threshold, because CSS units, zoom, and inherited scaling can push a heading below the cutoff. If a heading sits right at the boundary, treat it as normal text and require 4.5:1 so a small render difference can't drop you out of conformance.

*Reference: WCAG 1.4.3 (AA)*

### Give UI components 3:1 contrast

Interactive controls and their states must be distinguishable, not just the text inside them. Input borders, toggle switches, radio and checkbox outlines, the visual boundary of a button, and required-field indicators all need at least 3:1 contrast against adjacent colors. A pale gray input outline on a white form (say #DDDDDD, about 1.3:1) fails even if the label text passes. Check the border color against the page background, and check any active-state color against the inactive one. When a component has no border and relies on a fill, test the fill against the surrounding area. Fixing these usually means darkening one hairline border across the whole form.

*Reference: WCAG 1.4.11 (AA)*

### Meaningful graphics need 3:1 too

Graphical objects that a user must perceive to understand content need 3:1 contrast against what's next to them. This covers icons that carry meaning (a magnifying-glass search icon, a trash-can delete icon), the slices and lines of a chart, wayfinding arrows, and the parts of a diagram that convey data. Purely decorative graphics are exempt, so first decide whether the graphic is required for understanding. For a line chart, test each line color against the plot background and against neighboring lines. Thin one-pixel strokes are the usual failure; thickening the stroke or darkening the color both help. Skip this test only for imagery a screen-reader user could ignore entirely.

*Reference: WCAG 1.4.11 (AA)*

### Never rely on color alone

If color is the only thing that signals meaning, users who can't distinguish it are lost. A red "overdue" row, a green "paid" status, or "click the words in blue" all fail when color is the sole cue. Add a second channel: an icon, a text label, underlining, a pattern, or a shape. For form errors, pair the red outline with an error message and an alert icon. For a required field, add an asterisk plus a "required" note, not just a colored border. A quick test is to view the page in grayscale (macOS: System Settings > Accessibility > Display > Color Filters) and confirm every distinction still reads.

*Reference: WCAG 1.4.1 (A)*

### Keep in-text links distinguishable

When links sit inside a paragraph, color alone usually isn't enough to mark them, because color-blind users may not see the difference from surrounding text. Either underline in-text links, or ensure the link color has at least 3:1 contrast against the body text AND provides a non-color cue on hover and focus (such as an underline appearing). Underlining is the safest default — reserve "remove the underline" for navigation menus and button-styled links where position already signals interactivity. Don't underline non-link text, since that trains users to expect a link. Check the link-vs-body-text contrast, not just link-vs-background, when you skip the underline.

*Reference: WCAG 1.4.1 (A)*

### Make the focus indicator visible and high-contrast

Keyboard users need to see where focus is. Never set `outline: none` without a replacement. The focus indicator should have at least 3:1 contrast against the adjacent colors — both against the component and against the page background behind it. A thin default browser outline can vanish on colored backgrounds, so consider a two-color ring (for example a `box-shadow` with a light and dark layer) that stays visible on any surface. Tab through every interactive element and confirm the indicator is obvious at each stop. Give it enough area — a 2px solid outline or thicker reads far better than a 1px hairline.

*Reference: WCAG 2.4.7 (AA); 1.4.11*

### Don't let focus rings fail contrast on brand colors

A focus outline that looks fine on white can disappear against a dark header, a colored button, or a photographic hero. Test the indicator color against each background it will land on, not just the page default. A common fix is a double-ring: an inner light ring and an outer dark ring, so one layer always meets 3:1 no matter the surface. In CSS this is `outline` plus an offset `box-shadow`, or `:focus-visible { outline: 2px solid #fff; box-shadow: 0 0 0 4px #000; }`. Walk the site's darkest and lightest components and confirm the ring survives on both extremes before signing off.

*Reference: WCAG 2.4.11 / 2.4.7*

### Test dark mode as its own theme

Dark mode isn't just inverted colors — it's a separate palette that must meet contrast on its own. Light text on a dark background can produce halation (glare) if it's pure #FFFFFF on #000000, so use an off-white on a dark gray (like #E8E8E8 on #1A1A1A) and verify it still clears 4.5:1. Re-check every state: links, focus rings, disabled controls, and error text often break in dark mode because they were tuned for light. If you honor the OS `prefers-color-scheme` media query, run your full contrast pass in both themes. Don't assume passing light mode means dark mode passes.

*Reference: WCAG 1.4.3 (AA)*

### Support Windows High Contrast Mode

Windows High Contrast Mode (now Contrast Themes) overrides your palette with a small system set, and it ignores background images and many CSS colors. Icons drawn with `background-image` can disappear, and borders removed with `border: none` leave controls invisible. Use the `forced-colors: active` media query to restore what's lost — set `forced-color-adjust` deliberately, and use system color keywords like `CanvasText`, `ButtonText`, and `Highlight` so your UI adapts to the user's chosen theme. Test in Windows Settings > Accessibility > Contrast themes. Pay special attention to SVG icons, focus indicators, and any state you convey only with a background color, since forced colors will flatten those.

*Reference: WCAG 1.4.1; forced-colors media query*

### Design for color-vision deficiencies

About 1 in 12 men has some color-vision deficiency, most commonly red-green. Palettes that pair red and green (a classic pass/fail scheme) collapse for these users. Simulate before you ship: Chrome DevTools has a "Emulate vision deficiencies" option under Rendering (protanopia, deuteranopia, tritanopia, achromatopsia), and macOS/browser tools can preview grayscale. Prefer color pairs that differ in lightness as well as hue, and favor blue/orange over red/green when you must use two colors. Always back the color with a shape, label, or icon so the meaning survives any simulation. Run at least the deuteranopia and grayscale previews on every status color and chart legend.

*Reference: WCAG 1.4.1 (A); 1.4.3*

### Build an accessible brand palette

Turn a brand color set into a usable system by mapping which pairings pass. Create a matrix of every text color against every background color and mark the AA and AAA results with a tool like the TPGi Colour Contrast Analyser or a design-token contrast plugin. Most brand palettes have a few "hero" colors too light for body text — document those as decorative-or-large-text-only so designers don't misuse them. Add tint and shade variants (a darker version of the brand blue for links, a lighter one for backgrounds) so people have compliant options within the brand. Publish the matrix in the style guide so contrast decisions are made once, not re-litigated per page.

*Reference: WCAG 1.4.3 / 1.4.11 (AA)*

### Encode chart data beyond color

A chart that distinguishes series only by color fails for color-blind and grayscale users. Add a second encoding to every data series: direct labels on the lines or bars, distinct patterns or textures for fills (hatching, dots, dashes for line styles), and markers of different shapes at data points. Put the legend text next to a swatch that also carries the pattern, not just the color. For pie charts, label each slice directly rather than forcing a color-to-legend lookup. Verify by viewing the chart in grayscale — if you still can't tell the series apart, the color did all the work and the encoding needs more channels.

*Reference: WCAG 1.4.1 (A); 1.4.11*

### Don't put text on busy image backgrounds

Text over a photo or gradient often fails contrast in some spots even when it passes in others, because the background color changes under the letters. Sample the lightest and darkest pixels the text actually overlaps and test both — a caption that clears 4.5:1 over the sky can drop to 2:1 over a bright cloud. Fix it with a solid or semi-opaque scrim behind the text, a text shadow strong enough to guarantee separation, or by moving the text onto a flat color band. When using a scrim, test the final composited color, not the original image. Reserve text-over-image for large display type where you can control the region.

*Reference: WCAG 1.4.3 (AA)*

### Pick and standardize a contrast tool

Adopt one contrast analyzer across the team so results are consistent. The TPGi Colour Contrast Analyser (free desktop app for Windows and macOS) has an eyedropper that samples any pixel on screen — useful for testing rendered PDFs, native apps, and images where you can't read the hex. For web work, the Chrome DevTools color picker shows the contrast ratio and an AA/AAA checkmark inline when you edit a color. WebAIM's online checker is quick for one-off hex pairs. Whichever you choose, confirm it uses the current WCAG 2.x ratio formula and note that thin text and disabled controls have their own rules the tool won't judge for you.

*Reference: WCAG 1.4.3; tooling guidance*

### Placeholder text is not a substitute for a label

Low-contrast placeholder text is a frequent finding, and even at full contrast it disappears once the user types. Don't use placeholder text as the only field label, and don't set it so light it fails 4.5:1 — browsers often render placeholders around #757575 or lighter, which can fall below the threshold on white. Provide a persistent visible `<label>` for every field and reserve the placeholder for an optional format hint (like "MM/DD/YYYY"). If you keep a placeholder, test its computed color the same way you test body text. This keeps the field labeled after input and keeps the hint readable for low-vision users before input.

*Reference: WCAG 1.4.3 (AA); 3.3.2*
