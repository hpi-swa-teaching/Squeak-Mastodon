updating
updateWhoCanQuoteButton

	| displayText |
	displayText := self quotePolicySetting
		caseOf: {
			['public'] -> ['Anyone'].
			['followers'] -> ['Followers only'].
			['nobody'] -> ['Just me']}
		otherwise: [self error: 'No valid quote setting selected.'].
	
	self whoCanQuoteButton
		text: 'Who can quote: ', displayText;
		enabled: (self visibilitySetting = 'public' or: [self visibilitySetting = 'unlisted'])