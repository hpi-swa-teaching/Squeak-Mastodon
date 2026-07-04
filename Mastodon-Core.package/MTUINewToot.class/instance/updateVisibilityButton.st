updating
updateVisibilityButton

	| displayText |
	displayText := self visibilitySetting
		caseOf: {
			['public'] -> ['Public'].
			['unlisted'] -> ['Quiet public'].
			['private'] -> ['Followers'].
			['direct'] -> ['Private mention']}
		otherwise: [self error: 'No valid visibility setting selected.'].
	
	self visibilityButton text: 'Visibility: ', displayText