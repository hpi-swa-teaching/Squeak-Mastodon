views
loadSearchView

	self mastodonApi hasToken ifFalse: [^ false].
	
	self loadView: MTUISearch new as: #searchView activate: #searchButton