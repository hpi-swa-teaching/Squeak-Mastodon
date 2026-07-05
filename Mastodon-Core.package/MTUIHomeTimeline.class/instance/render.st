render
render

	self socialProvider showsFeedToolbar ifTrue: [self renderFeedToolbar].
	^ super render