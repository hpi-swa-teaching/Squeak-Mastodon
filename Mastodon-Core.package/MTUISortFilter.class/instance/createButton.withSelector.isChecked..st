render
createButton: label withSelector: aSelector isChecked: isChecked

	| button |
	button := UiRadioButton new
		text: label;
		checked: isChecked.
	self connect: button signal: #clicked: toSelector: aSelector pattern: {#=. label asLowercase asSymbol}.
	^ button