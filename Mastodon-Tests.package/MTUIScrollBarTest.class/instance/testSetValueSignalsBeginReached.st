model access
testSetValueSignalsBeginReached

	| scrollBar observer |
	observer := MTTestObserver new.
	
	scrollBar := self newScrollBarWithValue: 5 max: 10 min: 0.
	scrollBar
		addDependent: observer;
		setValue: 0.
	
	self assert: (observer received: #beginReached).
	
	self deny: (observer received: #endReached)