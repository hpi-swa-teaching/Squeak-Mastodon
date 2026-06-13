accessing
blueSkyProvider

	| baseURL token |
	baseURL := self blueSkyBaseURL.
	token := self token.
	
	(blueSkyInstance notNil and: [blueSkyInstance baseURL = baseURL]) ifTrue: [
		blueSkyInstance token: token.
		^ blueSkyInstance].
	
	^ blueSkyInstance := MTBlueSkyApi with: baseURL token: token