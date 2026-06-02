JSON
jsonValue: value

	value isNumber ifTrue: [^ value printString].
	^ '"', value asString, '"'