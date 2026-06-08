generated
defaultSearchResult

	| searchResult |
	searchResult := Dictionary new.
	
	searchResult at: 'accounts' put: self defaultAccountList.
	
	^ searchResult