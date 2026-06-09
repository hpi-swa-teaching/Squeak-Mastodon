updating
loadTootsOf: aMTUser
	"unused, but called by MTUIWindow>>loadProfileViewOf:"

	| toots |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	toots := mastodonApi getStatuses: aMTUser id.
	
	toots isError ifTrue: [
		self inform: (toots error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: toots value.
	self render