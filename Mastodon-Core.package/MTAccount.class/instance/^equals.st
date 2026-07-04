comparing
= anObject

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ self id = anObject id
		and: [ self username = anObject username
		and: [ self federatedUsername = anObject federatedUsername
		and: [ self displayName = anObject displayName
		and: [ self createdAt = anObject createdAt
		and: [ self url = anObject url
		and: [ self note = anObject note
		and: [ self avatar = anObject avatar
		and: [ self header = anObject header
		and: [ self followersCount = anObject followersCount
		and: [ self followingCount = anObject followingCount
		and: [ self statusesCount = anObject statusesCount ]]]]]]]]]]]