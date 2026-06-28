render-buttons
getCloseButton

	| button |
	button := MTUIPushButton new.
	button text: 'Cancel'.
	button setBalloonText: 'Discard current changes and close'.
	self connect: button signal: #clicked: toSelector: #close.
	^ button