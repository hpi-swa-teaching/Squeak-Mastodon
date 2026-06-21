tests
testUpdateProfileRejectsLongDescription

	| settings longDesc |
	settings := MTUISettings new.
	MTMastodonApi getInstance token: 'test-token'.
	longDesc := String new: 161 withAll: $a.
	settings usernameUpdateTextField contents: 'test'.
	settings descriptionTextField contents: longDesc.
	self assert: settings updateProfile equals: false