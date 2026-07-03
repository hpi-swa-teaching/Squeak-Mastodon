action
search

	| query queryResult |
	query := self searchTextField theText asString.
	queryResult := self socialProvider search: query.
	self accounts: queryResult value accounts.
	
	WorldState addDeferredUIMessage: [self render]