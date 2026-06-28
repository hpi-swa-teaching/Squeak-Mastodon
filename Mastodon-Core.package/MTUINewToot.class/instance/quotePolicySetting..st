accessing
quotePolicySetting: aSetting

	| display |
	quotePolicySetting := aSetting.
	
	display := aSetting caseOf: {
		['public'] -> ['Anyone'].
		['followers'] -> ['Followers only'].
		['nobody'] -> ['Just me']}.
	self quotePolicyButton text: 'Who can quote: ', display