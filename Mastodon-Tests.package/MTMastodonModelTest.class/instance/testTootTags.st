as yet unclassified
testTootTags
	| Model |
	
	Model :=  MTToot new.
	
	Model tags: '#hashtags'.
		
	self assert: (Model tags)  equals: ('#hashtags'). 