helpers
deleteRequest: url

	| response |
	response := self webClient
		httpDelete: url
		do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	response isSuccess ifTrue: [^ response content]