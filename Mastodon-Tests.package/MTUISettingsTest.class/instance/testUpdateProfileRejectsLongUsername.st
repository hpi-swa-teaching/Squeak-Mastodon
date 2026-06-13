tests
testUpdateProfileRejectsLongUsername

	| settings api longName |
	settings := MTUISettings new.
	api := MTMastodonApi new.
	settings mastodonApi: api.
	api token: 'test-token'.
	longName := String new: 31 withAll: $a.
	settings usernameUpdateTextField contents: longName.
	self assert: settings updateProfile equals: false