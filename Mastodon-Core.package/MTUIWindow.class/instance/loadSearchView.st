views
loadSearchView

	self ensureLoggedIn ifFalse: [^ false].
	
	self loadView: MTUISearch new as: #searchView activate: #searchButton