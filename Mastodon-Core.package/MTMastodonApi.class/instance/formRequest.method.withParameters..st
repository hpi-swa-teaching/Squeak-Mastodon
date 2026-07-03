helpers
formRequest: url method: httpMethod withParameters: parameters

	| response |
	response := self retryNetworkRequest: [
		self webClient
			httpPost: url
			content: (WebUtils encodeUrlEncodedForm: parameters)
			type: 'application/x-www-form-urlencoded'
			do: [:req |
				req method: httpMethod.
				req addHeader: 'Authorization' value: 'Bearer ', self token]].
	response ifNil: [^ nil].
	response isSuccess ifTrue: [^ response content].
	^ nil