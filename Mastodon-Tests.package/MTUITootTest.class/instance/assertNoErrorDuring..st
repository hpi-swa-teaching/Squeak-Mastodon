tests
assertNoErrorDuring: aBlock

	[aBlock value] on: Error do: [:ex | self fail: ex description]