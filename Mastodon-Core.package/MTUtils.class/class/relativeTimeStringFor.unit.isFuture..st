time-conversion
relativeTimeStringFor: count unit: unitSymbol isFuture: isFuture

	| str |
	str := count printString, ' ', unitSymbol.
	count > 1 ifTrue: [str  := str, 's'].
	isFuture ifTrue: [str := 'in ', str] ifFalse: [str := str, ' ago'].
	^ str