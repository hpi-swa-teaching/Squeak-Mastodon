generated
defaultSearchResult

	| searchResult |
	searchResult := Dictionary new.
	
	searchResult at: 'accounts' put: self defaultAccountList.
	searchResult at: 'hashtags' put: self defaultHashtagList.
	searchResult at: 'statuses' put: self defaultTootList.
	
	^ searchResult