as yet unclassified
setValue: newValue

	(newValue = self getMaximumValue) & (newValue ~= self getValue)
		ifTrue: [MTUIWindow instance viewMorph loadMoreToot].
	
	(newValue = 0) & (newValue ~= self getValue)
		ifTrue: [MTUIWindow instance viewMorph refreshToots].
			
	super setValue: newValue.
	
	