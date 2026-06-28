requesting
postRequest: aPath withParameters: aDictionary tries: aNumber
	
	^ [self postRequest: aPath withParameters: aDictionary] on: ConnectionClosed do: [:ex |
		aNumber > 0
			ifTrue: [self postRequest: aPath withParameters: aDictionary tries: aNumber - 1]
			ifFalse: [self error: ex]]