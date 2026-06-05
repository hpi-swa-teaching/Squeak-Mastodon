getter/setter
testHashtags

	| searchResults |
	searchResults := MTSearchResult new.
	
	searchResults hashtags: DataProvider defaultHashtagList.
	
	self assert: searchResults hashtags equals: DataProvider defaultHashtagList