account
testAccountNote

	| model |
	model := MTAccount new.
	
	model note: 'a note'.
	
	self assert: model note equals: 'a note'