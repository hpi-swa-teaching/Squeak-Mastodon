render-buttons
getVisibilityButton

	| button |
	button := MTUIPushButton new 
		text: 'Visibility: ';
		setBalloonText: 'Choose who can see this toot'.
	
	self connect: button signal: #clicked: toSelector: #showVisibilityWindow.
	
	^ button