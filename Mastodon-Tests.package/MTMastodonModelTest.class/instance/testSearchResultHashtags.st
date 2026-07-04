search result
testSearchResultHashtags

	| model |
	model := MTSearchResult new.
	
	model hashtags: '#Hashtag'.
	
	self assert: model hashtags equals: '#Hashtag'