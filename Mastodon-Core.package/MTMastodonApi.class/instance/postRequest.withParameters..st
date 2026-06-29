helpers
postRequest: url withParameters: parameters
	| response |
	response := self retryNetworkRequest: [
		webClient httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: parameters)
			type: 'application/x-www-form-urlencoded'
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token]
	].
	response ifNil: [^ nil].
	response isSuccess
		ifTrue: [^ response content].
	^ nil