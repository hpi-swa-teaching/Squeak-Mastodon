getter/setter
testStatusesCount

	| Model |
	Model := MTAccount new.
	
	Model statusesCount: DataProvider defaultStatusesCount.
	
	self assert: Model statusesCount equals: DataProvider defaultStatusesCount