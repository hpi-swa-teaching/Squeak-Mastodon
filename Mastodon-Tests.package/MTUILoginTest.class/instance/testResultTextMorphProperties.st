accessing
testResultTextMorphProperties

	| loginView morph |
	loginView := MTUILogin new.
	
	morph := loginView resultTextMorph.
	
	self assert: morph class equals: TextMorph.
	self assert: morph contents asString equals: ''