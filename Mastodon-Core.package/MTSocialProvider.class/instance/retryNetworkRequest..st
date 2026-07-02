helpers
retryNetworkRequest: aBlock

	1 to: self retryAmount do: [:attempt |
		[^ aBlock value] on: Error do: [:ex |
			(webClient isKindOf: WebClient) ifTrue: [
				webClient close.
				webClient := WebClient new].
			attempt = self retryAmount ifTrue: [^ nil]]].
	^ nil