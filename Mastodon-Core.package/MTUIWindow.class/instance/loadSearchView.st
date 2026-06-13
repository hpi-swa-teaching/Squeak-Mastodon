views
loadSearchView

	| searchView |
	self refreshProvider.
	self mastodonApi hasToken ifFalse: [^ false].
	searchView := MTUISearch new.
	
	searchView mastodonApi: self mastodonApi.
	self loadView: (MTUISearch new mastodonApi: mastodonApi) as: #searchView activate: #searchButton