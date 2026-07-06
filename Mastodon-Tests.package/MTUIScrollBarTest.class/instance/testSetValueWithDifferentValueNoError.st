model access-error
testSetValueWithDifferentValueNoError

	| scrollBar |
	scrollBar := self newScrollBarWithValue: 5 max: 10 min: 0.
	
	self shouldnt: [scrollBar setValue: 1] raise: Error

	