helpers
jsonStringFor: anObject
	anObject ifNil: [^ 'null'].
	(anObject == true) ifTrue: [^ 'true'].
	(anObject == false) ifTrue: [^ 'false'].
	(anObject isKindOf: String) ifTrue: [^ '"', (self escapeJsonString: anObject), '"'].
	(anObject isKindOf: Symbol) ifTrue: [^ self jsonStringFor: anObject asString].
	(anObject isKindOf: Number) ifTrue: [^ anObject printString].
	(anObject isKindOf: Dictionary) ifTrue: [^ self jsonStringForDictionary: anObject].
	(anObject isKindOf: Collection) ifTrue: [^ self jsonStringForCollection: anObject].
	^ self jsonStringFor: anObject asString
