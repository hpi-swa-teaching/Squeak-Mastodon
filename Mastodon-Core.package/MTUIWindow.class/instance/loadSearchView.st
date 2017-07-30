as yet unclassified
loadSearchView
	| searchView |
	self mastodonApi isAuthenticated ifFalse: [^false].
	searchView := MTUISearch new.
							
	searchView 
		mastodonApi: (self mastodonApi).
	self 
		loadView: (MTUISearch with: mastodonApi)
		as: #searchView 
		activate: #searchButton.