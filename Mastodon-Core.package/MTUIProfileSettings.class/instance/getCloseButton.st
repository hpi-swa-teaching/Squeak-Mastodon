render-buttons
getCloseButton

	| button |
	button := MTUIPushButton new.
	button text: 'Cancel'.
	self connect: button signal: #clicked: toSelector: #closeWindow.
	^ button