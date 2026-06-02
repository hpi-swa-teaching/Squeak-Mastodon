getter/setter
testHeaderURL

	| Model |
	Model := MTAccount new.
	
	Model headerURL: DataProvider defaultHeaderURL.
	
	self assert: Model headerURL equals: DataProvider defaultHeaderURL