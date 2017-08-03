as yet unclassified
testTootReblogged
	| Model |
	
	Model :=  MTToot new.
	
	Model reblogged: true.
		
	self assert: (Model reblogged)  equals: (true). 