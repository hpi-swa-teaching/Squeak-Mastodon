tests
testAccountUsername

	| model |
	model := MTAccount new.
	
	model username: 'schmidtflo'.
	
	self assert: model username equals: 'schmidtflo'