tests
testInitializeWithoutApiShowsPlaceholders

	| settings |
	settings := MTUISettings new.
	self assert: settings usernameUpdateTextField contents asString equals: 'New Username'.
	self assert: settings descriptionTextField contents asString equals: 'New Description'