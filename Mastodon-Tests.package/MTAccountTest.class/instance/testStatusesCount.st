getter/setter
testStatusesCount

	| account |
	account := MTAccount new.
	
	account statusesCount: DataProvider defaultStatusesCount.
	
	self assert: account statusesCount equals: DataProvider defaultStatusesCount