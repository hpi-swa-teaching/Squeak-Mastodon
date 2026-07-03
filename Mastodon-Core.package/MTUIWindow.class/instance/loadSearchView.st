views
loadSearchView

	| searchView |
	self refreshProvider.
	self socialProvider isAuthenticated ifFalse: [^ false].
	searchView := MTUISearch new.
	
	searchView socialProvider: self socialProvider.
	self loadView: (MTUISearch with: self socialProvider) as: #searchView activate: #searchButton.
	^ true