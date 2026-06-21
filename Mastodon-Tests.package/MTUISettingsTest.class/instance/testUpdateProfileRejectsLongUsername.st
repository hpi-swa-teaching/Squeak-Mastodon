tests
testUpdateProfileRejectsLongUsername

	| settings longName |
	settings := MTUISettings new.
	MTMastodonApi getInstance token: 'test-token'.
	longName := String new: 31 withAll: $a.
	settings usernameUpdateTextField contents: longName.
	self assert: settings updateProfile equals: false