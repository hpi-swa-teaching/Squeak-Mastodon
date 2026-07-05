updating
loadPublicToots

	| result |
	result := self socialProvider getPublicTimeline.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	self setToots: result value.
	^ true