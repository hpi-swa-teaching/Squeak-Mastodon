model access-error
testSetValueWithMaxValueNoError

	| scrollBar |
	scrollBar := self newScrollBarWithValue: 5 max: 10 min: 0.
	
	self shouldnt: [scrollBar setValue: 10] raise: Error

	