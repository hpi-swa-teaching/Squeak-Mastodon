getter/setter
testHeader

	| account |
	account := MTAccount new.
	
	account header: DataProvider defaultHeaderUrl.
	
	self assert: account header equals: DataProvider defaultHeaderUrl