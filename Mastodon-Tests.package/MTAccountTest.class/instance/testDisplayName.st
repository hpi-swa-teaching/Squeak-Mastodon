getter/setter
testDisplayName

	| account |
	account := MTAccount new.
	
	account displayName: DataProvider defaultDisplayName.
	
	self assert: account displayName equals: DataProvider defaultDisplayName