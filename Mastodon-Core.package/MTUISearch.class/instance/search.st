actions
search

	| query searchResult |
	query := self searchTextField theText asString.
	searchResult := self mastodonApi search: query.
	
	self
		accounts: searchResult accounts;
		refreshAccountMorphs