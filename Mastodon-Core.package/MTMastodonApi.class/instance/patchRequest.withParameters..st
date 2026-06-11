helpers
patchRequest: url withParameters: parameters
	| response |
	response := webClient httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: parameters)
			type: 'application/x-www-form-urlencoded'
			do: [:req | 
				req method:'PATCH'.
				req addHeader: 'Authorization' value: 'Bearer ', self token].
	response isSuccess 
		ifTrue: [^ response content "utf8ToSqueak"]