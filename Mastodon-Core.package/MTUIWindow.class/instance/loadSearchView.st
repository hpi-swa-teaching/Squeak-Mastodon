as yet unclassified
loadSearchView
	self 
		loadView: (MTUISearch with: mastodonApi)
		as: #searchView 
		activate: #searchButton.