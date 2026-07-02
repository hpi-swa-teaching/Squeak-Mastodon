tests
testSpecialCharacter

	| morph |
	morph := MTTextLineMorph new.
	self assert: (morph isSpecialCharacter: Character backspace).
	self assert: (morph isSpecialCharacter: Character arrowUp).
	self assert: (morph isSpecialCharacter: Character insert).
	self assert: (morph isSpecialCharacter: Character cr).
	self assert: (morph isSpecialCharacter: Character null).
	
	self deny: (morph isSpecialCharacter: $A).
	self deny: (morph isSpecialCharacter: Character space).
	self deny: (morph isSpecialCharacter: $¥).
	self deny: (morph isSpecialCharacter: $ß).
	self deny: (morph isSpecialCharacter: $-)