media
testMediaType

	| model |
	model := MTMedia new.
	
	model type: 'ein Typ'.
	
	self assert: model type equals: 'ein Typ'