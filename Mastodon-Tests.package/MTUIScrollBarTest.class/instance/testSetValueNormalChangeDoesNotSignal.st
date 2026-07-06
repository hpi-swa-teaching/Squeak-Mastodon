model access
testSetValueNormalChangeDoesNotSignal

	| scrollBar observer |
	observer := MTTestObserver new.
	
	scrollBar := self newScrollBarWithValue: 5 max: 0 min: 10.
	scrollBar
		addDependent: observer;
		setValue: 1.
	
	self deny: (observer received: #beginReached).
	
	self deny: (observer received: #endReached)