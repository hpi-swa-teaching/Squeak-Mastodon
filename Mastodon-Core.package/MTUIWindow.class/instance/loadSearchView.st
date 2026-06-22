views
loadSearchView

	self mastodonApi hasToken ifFalse: [self informToLogIn. ^ false].
	
	self loadView: MTUISearch new as: #searchView activate: #searchButton