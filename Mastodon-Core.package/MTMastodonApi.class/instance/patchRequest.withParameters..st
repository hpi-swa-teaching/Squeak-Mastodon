helpers
patchRequest: url withParameters: parameters

	| response |
	response := self webClient
		httpPost: url
		content: (WebUtils encodeUrlEncodedForm: parameters)
		type: 'application/x-www-form-urlencoded'
		do: [:req |
			req
				addHeader: 'Authorization' value: 'Bearer ', self token;
				method: 'PATCH'].
	response isSuccess ifTrue: [^ response content]