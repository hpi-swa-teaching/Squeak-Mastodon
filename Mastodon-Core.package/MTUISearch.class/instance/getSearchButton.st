render-buttons
getSearchButton

	| button |
	button := MTUIPushButton new
		text: self searchButtonText;
		setBalloonText: self searchButtonBalloonText;
		enabled: false;
		yourself.
	
	self connect: button signal: #clicked: toSelector: #search.
	
	^ button