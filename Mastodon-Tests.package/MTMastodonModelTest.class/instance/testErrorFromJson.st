error
testErrorFromJson

	| model |
	model := MTError from: (Dictionary newFromPairs: {'errors'. #('bad request')}).

	self assert: model errors equals: #('bad request')