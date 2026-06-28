json
testFromParsesInReplyToID

	| json toot |
	json := DataProvider defaultTootPlain.
	json at: 'in_reply_to_id' put: '12345'.
	toot := MTToot from: (DataProvider JsonObjectFromDictionary: json).
	self assert: toot inReplyToID equals: '12345'