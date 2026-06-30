endpoints
search: aQuery

	| query |
	query := aQuery asLowercase.
	
	^ MTSearchResult new accounts: (
		{self firstAccount. self secondAccount. self thirdAccount} 
			select: [:account | (account username asLowercase includesSubstring: query) 
									or: [account displayName asLowercase includesSubstring: query]])