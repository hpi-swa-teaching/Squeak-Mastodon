helpers
getFormattedBaseUrl

	| baseUrl |
	baseUrl := self getBaseUrlField theText asString withBlanksTrimmed.
	baseUrl isEmpty ifFalse: [
		((baseUrl beginsWith: 'https://') or: [baseUrl beginsWith: 'http://']) ifFalse: [baseUrl := 'https://', baseUrl].
		(baseUrl endsWith: '/') ifTrue: [baseUrl := baseUrl allButLast]].
	
	^ baseUrl