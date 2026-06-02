getter/setter
testCreatedAt

	| Model |
	Model := MTAccount new.
	
	Model createdAt: DataProvider defaultCreatedAt.
	
	self assert: Model createdAt equals: DataProvider defaultCreatedAt