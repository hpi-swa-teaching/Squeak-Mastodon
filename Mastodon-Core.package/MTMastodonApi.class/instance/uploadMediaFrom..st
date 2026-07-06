endpoints
uploadMediaFrom: aForm

	| response |
	response := [self postMediaForm: aForm tries: self numberOfTries]
		on: ConnectionClosed
		do: [:ex | self error: 'Media upload failed: connection was closed by server'].
	
	^ self deserialize: (self contentFromResponse: response)