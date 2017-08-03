as yet unclassified
testTootReblogsCount
	| Model |
	
	Model :=  MTToot new.
	
	Model reblogsCount: 5.
		
	self assert: (Model reblogsCount)  equals: (5). 