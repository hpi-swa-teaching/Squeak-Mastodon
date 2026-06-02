getter/setter
testPublicURL

	| Model |
	Model := MTAccount new.
	
	Model publicURL: DataProvider defaultPublicURL.
	
	self assert: Model publicURL equals: DataProvider defaultPublicURL