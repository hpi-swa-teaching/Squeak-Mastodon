comparing
= anObject

	self == anObject ifTrue: [^ true].
	self class = anObject class ifFalse: [^ false].

	^ self id = anObject id
		and: [self following = anObject following
		and: [self followedBy = anObject followedBy
		and: [self blocking = anObject blocking
		and: [self muting = anObject muting
		and: [self requested = anObject requested
		and: [self domainBlocking = anObject domainBlocking]]]]]]