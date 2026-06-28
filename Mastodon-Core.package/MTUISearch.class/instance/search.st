actions
search

	| query queryResult |
	query := searchTextField theText asString.
	queryResult := self mastodonApi search: query.
	self accounts: queryResult value accounts.
	self render