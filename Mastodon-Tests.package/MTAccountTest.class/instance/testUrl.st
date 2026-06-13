getter/setter
testUrl

	| account |
	account := MTAccount new.
	
	account url: DataProvider defaultAccountUrl.
	
	self assert: account url equals: DataProvider defaultAccountUrl