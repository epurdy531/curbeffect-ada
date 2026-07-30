### Tie a visible label to every HTML field

Every input, select, and textarea needs a programmatic name, not just placeholder text. In HTML, wrap the control in a `<label>` or use `<label for="fieldId">` matched to the field's `id`. Placeholders disappear on typing and often fail contrast, so they never substitute for a real label. When a visual label truly can't appear, use `aria-label` or `aria-labelledby` — but a persistent visible label is best for everyone. Test by clicking the label text: focus should jump into the field. Screen readers should announce the field's purpose, its type, and its state when it receives focus.

*Reference: WCAG 1.3.1, 4.1.2 (A)*

### Group related fields with fieldset and legend

Radio-button sets, checkbox groups, and clusters like "billing address" need a group name so screen reader users know what the choices belong to. In HTML, wrap the group in `<fieldset>` and give it a `<legend>` as the first child; the legend is announced together with each option. Without it, a user hears "yes" and "no" radios with no idea what question they answer. Keep legends short since they repeat per option. In tagged PDFs, the equivalent is nesting fields under a grouping structure and giving radio buttons a shared field name so they behave as one exclusive choice.

*Reference: WCAG 1.3.1 (A); PDF/UA form structure*

### Indicate required fields beyond color alone

Marking required fields only with red text or a red asterisk fails users who can't perceive color. Add a text cue like "(required)" in the label, or use `required` and `aria-required="true"` so assistive tech announces the state. If you use an asterisk, define it once in plain text near the top of the form ("Fields marked * are required") and keep the asterisk inside the `<label>` so it's read with the field name. In PDF forms, add "(required)" to the field's tooltip. Never rely on a colored border alone that appears only after a failed submit.

*Reference: WCAG 1.4.1, 3.3.2 (A)*

### Provide instructions before the input that needs them

Format rules, character limits, and examples must appear before the field, not only in an error after submission. Put help text like "MM/DD/YYYY" or "8+ characters" immediately after the label and connect it programmatically with `aria-describedby` pointing to the help element's `id`, so screen readers read it as part of the field. Placing hints only to the right or below, or hiding them in a tooltip that needs a mouse, leaves keyboard and screen reader users guessing. In PDF forms, put the same guidance in the field's tooltip (short description) since that is what assistive tech reads.

*Reference: WCAG 3.3.2 (A)*

### Identify errors in text, not just color

When validation fails, name each field in error and describe what's wrong in words. A red outline alone is invisible to many users. Set `aria-invalid="true"` on the failed field and link the message with `aria-describedby` so it's announced on focus. List errors at the top of the form as in-page links to each bad field, and repeat the message inline. Avoid vague text like "invalid input"; say "Enter a date in MM/DD/YYYY format." Keep the error text near the field visually and ensure its color contrast passes independently of the red styling.

*Reference: WCAG 3.3.1 (A)*

### Suggest specific corrections, not generic warnings

Beyond flagging that a field is wrong, tell the user how to fix it. "Email is invalid" helps less than "Enter an email address in the form name@example.com." For a date outside a range, state the allowed range. For a taken username, say so and suggest alternatives if you can. When you know the exact fix and it doesn't risk security or money, offer it. Deliver these suggestions in the same `aria-describedby` message the screen reader already reads, so correction guidance reaches everyone. This turns a dead-end error into an actionable next step and cuts repeated failed submissions.

*Reference: WCAG 3.3.3 (AA)*

### Make tab order follow reading order

Keyboard users move through a form with Tab, so the focus sequence must match the visual and logical order. In HTML, rely on natural DOM order and avoid positive `tabindex` values, which override the flow and create confusing jumps. If CSS has repositioned fields visually, fix the source order rather than patching with tabindex. In Acrobat, open the Prepare Form tool, use the Fields panel's "Order Tabs by Structure," or drag fields into the correct sequence. Test by tabbing from the first field to the submit button and confirm focus never leaps backward or skips a field.

*Reference: WCAG 2.4.3 (A); PDF/UA tab order*

### Add tooltips to every PDF form field

In a PDF, the field's tooltip is its accessible name — assistive technology reads it, since PDF form fields don't have on-canvas `<label>` elements. In Acrobat's Prepare Form tool, double-click each field, open Properties, and fill the "Tooltip" box on the General tab with a clear name like "First name" or "Date of birth (MM/DD/YYYY)." An unnamed field is announced only as "text field," giving no context. Keep tooltips concise and unique per field, mirror any visible label text, and include format hints and "(required)" where relevant so keyboard and screen reader users get the same guidance sighted users see.

*Reference: PDF/UA; WCAG 1.3.1, 4.1.2 (A)*

### Ensure full keyboard operability

Every control in a form must be reachable and operable without a mouse: Tab to move, Enter/Space to activate, and arrow keys within radio groups and menus. Custom widgets built from `<div>` or `<span>` often trap or skip focus; give them `tabindex="0"`, correct roles, and key handlers, or better, use native `<button>`, `<input>`, and `<select>`. Watch for focus traps where Tab can't escape a widget, and for controls only clickable by mouse. Test the whole form using the keyboard alone, from first field through submit and back, confirming the focus indicator is always visible so users can see where they are.

*Reference: WCAG 2.1.1, 2.1.2 (A)*

### Build accessible date pickers

Custom calendar widgets frequently break for keyboard and screen reader users. First, always allow direct text entry in a plain `<input>` with a stated format like "MM/DD/YYYY," so no one is forced to use the picker. If you offer a calendar, make it keyboard operable: arrow keys move between days, Page Up/Down change months, Enter selects, and Escape closes. Give it proper roles, announce the focused date, and label navigation buttons ("Previous month"). Return focus to the field after selection. Test that a screen reader announces the selected date and that keyboard-only users can pick any date without touching the mouse.

*Reference: WCAG 2.1.1, 4.1.2 (A)*

### Replace CAPTCHAs with accessible alternatives

Distorted-text and image CAPTCHAs block blind, low-vision, and many cognitive-disability users, and audio versions are often unusable. Prefer invisible methods that don't burden the user: server-side rate limiting, honeypot fields hidden from sighted users but detectable to bots, time-to-submit checks, or modern risk-scoring services that run in the background. If you must show a challenge, offer at least two modalities and ensure any interactive control is fully labeled and keyboard operable. For government forms under Title II, an inaccessible CAPTCHA can wall people off from essential services entirely, so treat a genuine accessible fallback as mandatory, not optional.

*Reference: WCAG 1.1.1 (A)*

### Confirm successful submission accessibly

After a form submits, tell the user clearly that it worked. Move focus to a success heading or message so screen reader users land on the confirmation, or place it in an ARIA live region (`aria-live="polite"` or `role="status"`) that announces without stealing focus mid-task. A silent redirect or a color change alone leaves non-visual users unsure whether anything happened. Include a confirmation or reference number in text. Avoid announcing success only via a transient toast that vanishes before a screen reader reads it. Test by submitting with a screen reader running and confirm the outcome is spoken.

*Reference: WCAG 4.1.3 (AA)*

### Announce dynamic status and validation changes

When a form updates without a full page reload — inline validation, a spinner during submission, a count of remaining characters — assistive tech needs a way to hear it. Wrap the changing text in a live region: `role="status"` or `aria-live="polite"` for non-urgent updates, `role="alert"` for errors that need immediate attention. Populate the region after the page loads so its initial content isn't skipped. Don't overuse `aria-live="assertive"`, which interrupts. Keep messages short and specific. Test that submitting, triggering an error, and fixing it each produce a spoken update, so screen reader users track progress the same way sighted users watch the screen.

*Reference: WCAG 4.1.3 (AA)*

### Label custom widgets with correct ARIA roles

When a form uses a scripted combobox, toggle, slider, or multi-select instead of native controls, it must expose the right role, name, value, and state. A styled `<div>` acting as a dropdown needs `role="combobox"`, `aria-expanded`, `aria-controls`, and a linked listbox with `role="option"` items, plus arrow-key handling. Without these, a screen reader announces nothing useful and keyboard users can't operate it. Whenever possible, use native `<select>`, `<input type="checkbox">`, or `<input type="range">`, which give this behavior for free. If you build custom, follow an established authoring-practices pattern and test the name, role, and value are all announced correctly.

*Reference: WCAG 4.1.2 (A)*

### Keep placeholder text out of the labeling job

Placeholder attributes are a common trap: they vanish once typing starts, often fail the 4.5:1 contrast ratio, and are ignored or inconsistently read by assistive tech. Never use a placeholder as the only label or as the format instruction. Keep a persistent `<label>` above or beside the field, and if you want an example, put it in help text tied with `aria-describedby` rather than in the placeholder. If a placeholder stays, make sure its text meets contrast and duplicates information already in the visible label. This ensures the field's purpose remains visible and spoken even after the user begins entering data.

*Reference: WCAG 1.4.3, 3.3.2 (A)*

### Enable the interactive form fields in a PDF

Scanned or "flat" PDFs printed as static pages force people to print, fill by hand, and mail forms back — a barrier for many users. Use Acrobat's Prepare Form tool to auto-detect fields, then review each one, since detection misses and mislabels. Confirm every field is a real, fillable object with a tooltip, correct type (text, checkbox, radio, dropdown), and sensible size. Add a digital-signature field where a signature is required rather than a "sign here" line. A fully interactive, tagged form lets keyboard and screen reader users complete it on screen, independently, and in the same session as everyone else.

*Reference: PDF/UA; WCAG 1.3.1 (A)*

### Set the correct field type for each PDF control

Choosing the wrong PDF field type breaks the interaction model assistive tech expects. Use checkboxes for independent yes/no options and radio buttons for mutually exclusive choices — and give members of one radio group the same field name with different export values so only one can be selected. Use a dropdown (list box or combo box) for long option lists rather than a stack of checkboxes. In Acrobat's Prepare Form tool, verify each control's type in Properties. Mismatched types confuse keyboard navigation and screen reader announcements, so audit that single-select questions truly behave as single-select and that grouped options are announced as a set.

*Reference: PDF/UA; WCAG 1.3.1, 4.1.2 (A)*

### Preserve accessibility when exporting Word forms to PDF

Forms authored in Word keep their accessibility only if you export correctly. Build fields with the Developer tab's content controls, add a real label paragraph before each, and set required-field cues in text. Use Word's built-in "Check Accessibility" first. Then export with File > Save As or the Acrobat add-in choosing "Best for electronic distribution and accessibility (uses Microsoft's tagging)," not Print. Confirm "Document structure tags for accessibility" is enabled in export options. After export, open the PDF in Acrobat and verify tags, tooltips, and tab order survived, since content controls don't always convert cleanly into fillable, tooltip-bearing PDF form fields.

*Reference: PDF/UA; WCAG 1.3.1 (A)*

### Give each field enough context for autofill and clarity

Fields that collect personal data should carry an `autocomplete` token — `autocomplete="email"`, `"tel"`, `"given-name"`, `"postal-code"` — so browsers and assistive tools can identify the field's purpose and fill it automatically. This reduces effort for users with motor or cognitive disabilities and helps those who rely on stored data. Pair it with a clear, persistent label; autocomplete supplements the label, it doesn't replace it. Match the token to the actual data requested, and split combined fields (full name, full address) where a standard token exists per part. Test that the browser's autofill offers the right value and the label still reads correctly.

*Reference: WCAG 1.3.5 (AA)*

### Warn and confirm before destructive or final submissions

For forms that spend money, delete data, or submit a legal filing, protect users from irreversible mistakes. Provide a reversible step, a review-before-submit summary, or an explicit confirmation the user must acknowledge — and make that confirmation itself keyboard operable and screen-reader announced. Don't auto-submit on a change event or after an idle timeout without warning. If a session time limit exists, warn ahead and let the user extend it so a slow reader isn't kicked out mid-form with lost data. On the review screen, let users jump back to any field to edit. These safeguards especially help users with cognitive and motor disabilities.

*Reference: WCAG 3.3.4 (AA), 2.2.1 (A)*
