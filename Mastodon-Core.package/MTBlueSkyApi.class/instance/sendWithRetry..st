helpers
sendWithRetry: aRequestBlock

	| response |
	response := self retryNetworkRequest: aRequestBlock.
	(self shouldRefreshAfter: response) ifTrue: [
		self refreshSession ifTrue: [response := self retryNetworkRequest: aRequestBlock]].
	^ response