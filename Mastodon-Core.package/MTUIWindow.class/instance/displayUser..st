render
displayUser: aUsername
"this method is not used because displaying users is currently not possible"

	| user |
	self refreshProvider.
	self mastodonApi hasToken ifFalse: [^false].
	user := self mastodonApi getAccount: aUsername.
	user isError ifTrue: [
		self inform: 'An error occured while loading user with screenName: ', aUsername.
		^ false].
	self loadProfileViewOf: user value