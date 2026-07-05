error
testErrorErrors

	| model |
	model := MTError new.
	
	model errors: Array.
	
	self assert: model errors equals: Array