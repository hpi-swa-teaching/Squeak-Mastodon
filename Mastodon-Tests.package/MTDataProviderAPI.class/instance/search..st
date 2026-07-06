endpoints
search: aQuery

	| query |
	searchCalled := true.
	
	query := aQuery asLowercase.
	
	^ MTSearch new accounts: (
		{self firstAccount. self secondAccount. self thirdAccount} 
			select: [:account | (account username asLowercase includesSubstring: query) 
									or: [account displayName asLowercase includesSubstring: query]])