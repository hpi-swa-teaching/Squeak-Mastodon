comparing
= anObject

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].

	^ self id = anObject id
		and: [ self type = anObject type
		and: [ self url = anObject url
		and: [ self previewUrl = anObject previewUrl ]]]