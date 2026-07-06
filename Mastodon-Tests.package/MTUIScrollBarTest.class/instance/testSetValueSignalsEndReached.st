model access
testSetValueSignalsEndReached

	| scrollBar observer |
	observer := MTTestObserver new.
	
	scrollBar := self newScrollBarWithValue: 5 max: 10 min: 0.
	scrollBar
		addDependent: observer;
		setValue: 10.
	
	self deny: (observer received: #beginReached).
	
	self assert: (observer received: #endReached)