helpers
getRequest: url
	| response |
	response := self retryNetworkRequest: [
		webClient httpGet: url
			do: [:req | self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token]]
	].
	response ifNil: [^ nil].
	response isSuccess
		ifTrue: [^ response content].
	^ nil