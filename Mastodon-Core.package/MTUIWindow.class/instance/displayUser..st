as yet unclassified
displayUser: aUsername
|user|
	self mastodonApi isAuthenticated ifFalse: [^false].
	user := self mastodonApi getAccount: aUsername.
	user isError ifTrue: [ 
		self inform: ('An error occured while loading user with screenName: ' , aUsername).
		^false].
	self loadProfileViewOf: user value