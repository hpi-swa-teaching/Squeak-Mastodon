model access-error
testSetValueWithSameValueNoError

	| scrollBar |
	scrollBar := self newScrollBarWithValue: 5 max: 10 min: 0.
	
	self shouldnt: [scrollBar setValue: 5] raise: Error