helpers
postRequest: url content: jsonString
	| response |
	response := self retryNetworkRequest: [
		webClient httpPost: url
			content: jsonString
			type: 'application/json'
			do: [:req | self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token]]
	].
	response ifNil: [^ nil].
	response isSuccess
		ifTrue: [^ response content]
		ifFalse: [^ nil]