helpers
getRequest: url

	| response |
	response := self webClient
		httpGet: url
		do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	response isSuccess ifTrue: [^ response content] ifFalse: [^ nil].