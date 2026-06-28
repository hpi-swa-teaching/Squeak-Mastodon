actions
search

	| query queryResult |
	query := searchTextField theText asString.
	(query anySatisfy: [:c | c isSeparator not]) ifFalse: [^ self].
	queryResult := self mastodonApi search: query.
	self accounts: queryResult value accounts.
	self render