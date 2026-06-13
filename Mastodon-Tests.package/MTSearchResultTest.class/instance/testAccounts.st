getter/setter
testAccounts

	| searchResults |
	searchResults := MTSearchResult new.
	
	searchResults accounts: {DataProvider defaultAccount}.
	
	self assert: searchResults accounts equals: {DataProvider defaultAccount}