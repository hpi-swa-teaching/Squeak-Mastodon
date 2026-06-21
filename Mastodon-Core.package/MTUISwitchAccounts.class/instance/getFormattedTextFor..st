helpers
getFormattedTextFor: aCredential

	| name handle baseUrl |
	name := self displayNameFor: aCredential.
	handle := self federatedUsernameFor: aCredential.
	baseUrl := aCredential baseUrl ifNil: ['Unknown server'].
	
	^ Text streamContents: [:s |
		s
			withAttribute: TextEmphasis bold
			do: [s nextPutAll: ((name isNil or: [name isEmpty]) ifTrue: [handle] ifFalse: [name])].
		s nextPutAll: ' (@', handle, ')', String cr.
		s withAttribute: TextEmphasis italic do: [s nextPutAll: baseUrl]]