comparing
= anObject

	self == anObject ifTrue: [^ true].
	self class = anObject class ifFalse: [^ false].

	^ self accounts = anObject accounts