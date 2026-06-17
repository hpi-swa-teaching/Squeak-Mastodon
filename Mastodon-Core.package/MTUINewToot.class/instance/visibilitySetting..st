accessing
visibilitySetting: aSetting

	| display |
	visibilitySetting := aSetting.
	
	display := aSetting caseOf: {
		['public'] -> ['Public'].
		['unlisted'] -> ['Quiet public'].
		['private'] -> ['Followers'].
		['direct'] -> ['Private mention']}.
	self visibilityButton text: 'Visibility: ', display