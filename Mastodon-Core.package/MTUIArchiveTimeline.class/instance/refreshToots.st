as yet unclassified
refreshToots

	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	newToots := ( self collectArchived: self getNewMentions).
	"newToots isError ifTrue: [
		self inform: (newToots error ifNil: ['An error occurred']).
		^ false]."
	newToots ifNotEmpty: (self prependToots: newToots value)