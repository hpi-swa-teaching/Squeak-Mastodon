as yet unclassified
for: anObject

	| objectMorph |
	objectMorph := self object: anObject.
	objectMorph render.
	
	^ objectMorph