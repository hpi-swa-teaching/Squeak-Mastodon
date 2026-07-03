views
loadSearchView

	| searchView |
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ self].
	searchView := MTUISearch new.
	
	searchView mastodonApi: self mastodonApi.
	self loadView: (MTUISearch with: self mastodonApi) as: #searchView activate: #searchButton