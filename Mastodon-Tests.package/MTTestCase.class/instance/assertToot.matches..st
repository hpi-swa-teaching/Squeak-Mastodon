helpers
assertToot: aResultedToot matches: anExpectedToot

	self assertAccount: aResultedToot account matches: anExpectedToot account.
	
	self assert: aResultedToot content equals: anExpectedToot content.
	self assert: aResultedToot createdAt equals: anExpectedToot createdAt.
	self assert: aResultedToot favourited equals: anExpectedToot favourited.
	self assert: aResultedToot favouritesCount equals: anExpectedToot favouritesCount.
	self assert: aResultedToot id equals: anExpectedToot id.
	self assert: aResultedToot inReplyToAccountID equals: anExpectedToot inReplyToAccountID.
	self assert: aResultedToot inReplyToID equals: anExpectedToot inReplyToID.
	self assert: aResultedToot reblogged equals: anExpectedToot reblogged.
	self assert: aResultedToot reblogsCount equals: anExpectedToot reblogsCount.
	self assert: aResultedToot url equals: anExpectedToot url.
	self assert: aResultedToot tags equals: anExpectedToot tags.
	self assert: aResultedToot mentions equals: anExpectedToot mentions.
	self assert: aResultedToot quote equals: anExpectedToot quote.
	self assert: aResultedToot reblog equals: anExpectedToot reblog.
	
	self assert: aResultedToot media size equals: anExpectedToot media size.
	aResultedToot media
		with: anExpectedToot media
		do: [:resultedMedia :expectedMedia | self assertMedia: resultedMedia matches: expectedMedia]