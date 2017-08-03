as yet unclassified
testAccountStatusesCount
	| Model |
	
	Model := MTAccount new.
	
	Model statusesCount: 1337.
	
	self assert: (Model statusesCount)  equals: (1337). 