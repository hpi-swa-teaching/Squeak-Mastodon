render-buttons
getQuotePolicyButton
	
	| button |
	button := MTUIPushButton new setBalloonText: 'Choose who can quote this toot'.
	self connect: button signal: #clicked: toSelector: #showQuotePolicyWindow.
	
	^ button