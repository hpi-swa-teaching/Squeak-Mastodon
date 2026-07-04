time
testRelativeTimeString

	| now |
	now := TimeStamp now asUTC.
	
	self assert: (MTUtils relativeTimeString: (now - 30 seconds)) equals: 'just now'.
	self assert: (MTUtils relativeTimeString: (now - 330 seconds)) equals: '5 minutes ago'.
	self assert: (MTUtils relativeTimeString: (now - 7500 seconds)) equals: '2 hours ago'