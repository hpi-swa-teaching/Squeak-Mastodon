action
search
	|query queryResult|

	query := searchTextField theText asString.
	queryResult:= mastodonApi search: query.
	self accounts: queryResult value accounts.
	
	WorldState addDeferredUIMessage: [self render].