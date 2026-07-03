model access-error
testSetValueWithMinValueNoError

	| scrollBar |
	scrollBar := self newScrollBarWithValue: 5 max: 10 min: 0.
	
	self shouldnt: [scrollBar setValue: 0] raise: Error