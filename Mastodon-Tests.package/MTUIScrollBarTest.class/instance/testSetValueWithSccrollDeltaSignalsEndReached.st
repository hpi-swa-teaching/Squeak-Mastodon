model access
testSetValueWithSccrollDeltaSignalsEndReached

	| scrollBar observer |
	observer := MTTestObserver new.
	
	scrollBar := self newScrollBarWithValue: 5 max: 10 min: 0.
	scrollBar
		scrollDelta: 2 pageDelta: 1;
		addDependent: observer;
		setValue: 9.
	
	self deny: (observer received: #beginReached).
	
	self assert: (observer received: #endReached)