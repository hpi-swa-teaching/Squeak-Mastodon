render-buttons
getCloseButton

	| button |
	button := MTUIPushButton new.
	button
		text: 'Back to Profile Page';
		setBalloonText: 'Return to your currently logged-in profile';
		color: Color veryVeryLightGray.
	self connect: button signal: #clicked: toSelector: #changeViewToProfileView.
	^ button