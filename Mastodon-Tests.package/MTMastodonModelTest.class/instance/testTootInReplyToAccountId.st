as yet unclassified
testTootInReplyToAccountId
	| Model |
	
	Model :=  MTToot new.
	
	Model inReplyToAccountID: 1337.
		
	self assert: (Model inReplyToAccountID)  equals: (1337). 