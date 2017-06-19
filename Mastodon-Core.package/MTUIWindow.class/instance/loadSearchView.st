as yet unclassified
loadSearchView
	| searchView |
	searchView := MTUISearch new.
							
	searchView 
		mastodonApi: (self mastodonApi).
	self 
		loadView: (MTUISearch with: mastodonApi)
		as: #searchView 
		activate: #searchButton.