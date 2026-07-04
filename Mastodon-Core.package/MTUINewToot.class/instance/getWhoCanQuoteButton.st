render-buttons
getWhoCanQuoteButton

	| button |
	button := MTUIPushButton new
		text: 'Who can quote: '; 
		setBalloonText: 'Choose who can quote this toot'.
	
	self connect: button signal: #clicked: toSelector: #showQuotePolicyWindow.
	
	^ button