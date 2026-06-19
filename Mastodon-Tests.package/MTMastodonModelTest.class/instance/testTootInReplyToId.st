as yet unclassified
testTootInReplyToId
	| Model |
	
	Model :=  MTToot new.
	
	Model inReplyToID: 1337.
		
	self assert: (Model inReplyToID)  equals: (1337). 