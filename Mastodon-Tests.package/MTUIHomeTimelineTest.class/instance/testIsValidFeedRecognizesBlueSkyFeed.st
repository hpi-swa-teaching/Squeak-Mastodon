feeds
testIsValidFeedRecognizesBlueSkyFeed

	| timeline |
	timeline := MTUIHomeTimeline new.
	self assert: (timeline isValidFeed: MTBlueSkyFeed home).
	self deny: (timeline isValidFeed: nil).
	self deny: (timeline isValidFeed: false)