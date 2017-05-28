as yet unclassified
setValue: newValue

	(newValue = self getMaximumValue) & (newValue ~= self getValue)
		ifTrue: [MTUIWindow instance viewMorph loadMoreTweets].
	
	(newValue = 0) & (newValue ~= self getValue)
		ifTrue: [MTUIWindow instance viewMorph refreshTweets].
			
	super setValue: newValue.
	
	