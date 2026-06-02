helper
isSpecialCharacter: char
	| constantName |
	constantName := Character constantNameFor: char.
	^ (constantName isNil or: (#(#space #euro) includes: constantName)) not