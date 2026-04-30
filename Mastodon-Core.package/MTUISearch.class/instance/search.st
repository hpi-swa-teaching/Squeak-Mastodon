action
search
	"comment stating purpose of message"
	|query queryResult|
	(self mastodonApi supportsFeature: #search)
		ifFalse: [self inform: 'Search not supported.'. ^ false].

	query := searchTextField theText asString.
	queryResult:= mastodonApi search: query.
	self accounts: queryResult value accounts.
	
	self	render.