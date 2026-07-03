tests
testTimestampFromString

	| ts |
	ts := MTUtils timestampFromString: '2017-06-19T14:17:34.000Z'.
	
	self assert: ts year equals: 2017.
	self assert: ts month equals: 6.
	self assert: ts hour equals: 14.
	self assert: ts minute equals: 17