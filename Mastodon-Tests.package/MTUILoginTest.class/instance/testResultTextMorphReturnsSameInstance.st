accessing
testResultTextMorphReturnsSameInstance

	| loginView firstMorph secondMorph |
	loginView := MTUILogin new.
	
	firstMorph := loginView resultTextMorph.
	secondMorph := loginView resultTextMorph.
	
	self assert: firstMorph equals: secondMorph