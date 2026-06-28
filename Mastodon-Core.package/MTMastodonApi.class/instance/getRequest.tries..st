requesting
getRequest: aPath tries: aNumber

	^ [self getRequest: aPath] on: ConnectionClosed do: [:ex |
		aNumber > 0
			ifTrue: [self getRequest: aPath tries: aNumber - 1]
			ifFalse: [self error: ex]]