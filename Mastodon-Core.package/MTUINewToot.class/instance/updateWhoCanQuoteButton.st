updating
updateWhoCanQuoteButton

	| displayText |
	displayText := self quotePolicyTranslations
		at: self quotePolicySetting
		ifAbsent: [self error: 'No valid quote setting selected.'].
	
	self whoCanQuoteButton
		text: self whoCanQuoteButtonText, displayText;
		enabled: (self visibilitySetting = 'public' or: [self visibilitySetting = 'unlisted'])