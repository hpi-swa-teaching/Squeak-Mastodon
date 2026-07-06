helpers
postRequest: url content: jsonString

	| response |
	response := self webClient
		httpPost: url
		content: jsonString
		type: 'application/json'
		do: [:req | self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token]].
	response isSuccess ifTrue: [^ response content] ifFalse: [^ nil]