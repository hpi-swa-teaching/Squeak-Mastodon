model access
setValue: newValue

	| oldValue actualValue max min |
	newValue = self getValue ifTrue: [^ nil].
	
	max := self getMaximumValue.
	min := self getMinimumValue.
	oldValue := self getValue.
	
	super setValue: newValue.
	actualValue := self getValue.
	
	(oldValue + self scrollDelta < max and: [actualValue + self scrollDelta > max]) ifTrue: [self changed: #endReached].
	
	(oldValue ~= min and: [actualValue = min]) ifTrue: [self changed: #beginReached]