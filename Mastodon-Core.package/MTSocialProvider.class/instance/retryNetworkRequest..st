helpers
retryNetworkRequest: aBlock

	1 to: self retryAmount do: [:attempt |
		[^ aBlock value] on: Error do: [:ex |
			(self webClient isKindOf: WebClient) ifTrue: [
				self webClient close.
				webClient := WebClient new].
			attempt = self retryAmount ifTrue: [^ nil]]].
	^ nil