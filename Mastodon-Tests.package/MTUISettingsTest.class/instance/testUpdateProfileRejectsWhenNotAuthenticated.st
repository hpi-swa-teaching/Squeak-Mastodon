tests
testUpdateProfileRejectsWhenNotAuthenticated

	| settings api |
	settings := MTUISettings new.
	api := MTMastodonApi new.
	settings mastodonApi: api.
	self assert: settings updateProfile equals: false.