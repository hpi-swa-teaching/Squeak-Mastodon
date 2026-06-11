tests
testUpdateProfileRejectsLongDescription

	| settings api longDesc |
	settings := MTUISettings new.
	api := MTMastodonApi new.
	settings mastodonApi: api.
	api token: 'test-token'.
	longDesc := String new: 161 withAll: $a.
	settings usernameUpdateTextField contents: 'test'.
	settings descriptionTextField contents: longDesc.
	self assert: settings updateProfile equals: false