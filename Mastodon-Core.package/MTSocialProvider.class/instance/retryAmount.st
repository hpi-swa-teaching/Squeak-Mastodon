accessing
retryAmount
	^ retryAmount ifNil: [retryAmount := 3]