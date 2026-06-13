getter/setter
testUsername

	| account |
	account := MTAccount new.
	
	account username: DataProvider defaultUsername.
	
	self assert: account username equals: DataProvider defaultUsername