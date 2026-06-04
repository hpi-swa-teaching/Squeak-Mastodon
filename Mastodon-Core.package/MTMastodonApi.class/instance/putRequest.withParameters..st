helpers
putRequest: url withParameters: parameters

	| response |
	response := webClient
		httpPut: url
		content: (WebUtils encodeUrlEncodedForm: parameters)
		type: 'application/x-www-form-urlencoded'
		do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	response isSuccess ifTrue: [^ response content utf8ToSqueak]