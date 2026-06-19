as yet unclassified
testSearchResultHashtags
	| Model |
	
	Model :=  MTSearchResult new.
	
	Model hashtags: '#Hashtag'.
		
	self assert: (Model hashtags)  equals: ('#Hashtag'). 