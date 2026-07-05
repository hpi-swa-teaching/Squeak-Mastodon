comparing
= anObject

	self == anObject ifTrue: [^ true].
	self class = anObject class ifFalse: [^ false].
	
	^ self ancestors = anObject ancestors and: [self descendants = anObject descendants]