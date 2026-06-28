requesting
postMediaForm: aForm tries: aNumber

	^ [self postMediaForm: aForm] on: ConnectionClosed do: [:ex |
		aNumber > 0
			ifTrue: [self getRequest: aForm tries: aNumber - 1]
			ifFalse: [self error: ex]]