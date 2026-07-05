updating
update: aSignal
	
	aSignal = #textLengthChanged ifTrue: [self updateForText]