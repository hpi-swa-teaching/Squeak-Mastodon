comparing
= anObject

	self == anObject ifTrue: [^ true].
	self class = anObject class ifFalse: [^ false].

	^ self id = anObject id
		and: [self createdAt = anObject createdAt
		and: [self content = anObject content
		and: [self reblog = anObject reblog
		and: [self quote = anObject quote
		and: [self account = anObject account
		and: [self favourited = anObject favourited
		and: [self reblogged = anObject reblogged
		and: [self reblogsCount = anObject reblogsCount
		and: [self favouritesCount = anObject favouritesCount
		and: [self inReplyToAccountID = anObject inReplyToAccountID
		and: [self inReplyToID = anObject inReplyToID
		and: [self url = anObject url
		and: [self media = anObject media]]]]]]]]]]]]]