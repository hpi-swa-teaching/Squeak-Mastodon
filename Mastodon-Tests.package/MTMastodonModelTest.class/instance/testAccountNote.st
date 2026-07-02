tests
testAccountNote

	| Model |
	Model := MTAccount new.
	
	Model note: 'a note'.
	
	self assert: Model note equals: 'a note'