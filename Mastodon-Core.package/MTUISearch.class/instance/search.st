as yet unclassified
search
	"comment stating purpose of message"
	|query queryResult|

	query := searchTextField theText asString.
	queryResult:= mastodonApi search: query.
	self accounts: queryResult value accounts.
	
	self	render.