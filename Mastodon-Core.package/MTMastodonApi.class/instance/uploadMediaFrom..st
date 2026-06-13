endpoints
uploadMediaFrom: aForm

	| response |
	response := [self postMediaForm: aForm]
		on: ConnectionClosed
		do: [:ex | self error: 'Media upload failed: connection was closed by server'].
	
	^ self contentFromResponse: response