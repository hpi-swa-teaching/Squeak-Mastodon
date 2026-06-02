getter/setter
testNote

	| Model |
	Model := MTAccount new.
	
	Model note: DataProvider defaultNote.
	
	self assert: Model note equals: DataProvider defaultNote.