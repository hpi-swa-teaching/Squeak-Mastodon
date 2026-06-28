requesting
patchRequest: aPath withParameters: aDictionary tries: aNumber


	^ [self patchRequest: aPath withParameters: aDictionary] on: ConnectionClosed do: [:ex |
		aNumber > 0
			ifTrue: [self patchRequest: aPath withParameters: aDictionary tries: aNumber - 1]
			ifFalse: [self error: ex]]