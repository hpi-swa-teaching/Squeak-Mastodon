render-buttons
getCloseButton

	| button |
	button := MTUIPushButton new.
	button
		text: 'Back to Profile Page';
		color: Color veryVeryLightGray.
	self connect: button signal: #clicked: toSelector: #changeViewToProfileView.
	^ button