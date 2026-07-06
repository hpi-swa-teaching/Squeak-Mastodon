render-buttons
getWhoCanQuoteButton

	| button |
	button := MTUIPushButton new
		text: self whoCanQuoteButtonText;
		setBalloonText: self whoCanQuoteButtonBalloonText.
	
	self connect: button signal: #clicked: toSelector: #showQuotePolicyWindow.
	
	^ button