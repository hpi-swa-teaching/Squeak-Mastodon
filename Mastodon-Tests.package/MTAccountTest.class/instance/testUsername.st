getter/setter
testUsername

	| Model |
	Model := MTAccount new.
	
	Model username: DataProvider defaultUsername.
	
	self assert: Model username equals: DataProvider defaultUsername