getter/setter
testDisplayName

	| Model |
	Model := MTAccount new.
	
	Model displayName: DataProvider defaultDisplayName.
	
	self assert: Model displayName equals: DataProvider defaultDisplayName.