render-buttons
getTootButton

	| button |
	button := MTUIPushButton new
		text: 'Toot';
		setBalloonText: 'Post new toot'.
	
	self connect: button signal: #clicked: toSelector: #toot.
	
	^ button