views
loadSearchView
	| searchView |
	self refreshProvider.
	self mastodonApi hasToken ifFalse: [^false].
	searchView := MTUISearch new.
							
	searchView 
		mastodonApi: (self mastodonApi).
	self 
		loadView: (MTUISearch with: mastodonApi)
		as: #searchView 
		activate: #searchButton.