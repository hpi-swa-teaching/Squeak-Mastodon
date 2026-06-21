tests
testUpdateProfileRejectsWhenNotAuthenticated

	| settings |
	settings := MTUISettings new.
	MTMastodonApi getInstance token: 'token'.
	self assert: settings updateProfile equals: false