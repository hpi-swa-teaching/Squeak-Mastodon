getter/setter
testNote

	| account |
	account := MTAccount new.
	
	account note: DataProvider defaultNote.
	
	self assert: account note equals: DataProvider defaultNote