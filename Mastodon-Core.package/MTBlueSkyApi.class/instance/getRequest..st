helpers
getRequest: url

	| response |
	response := self sendWithRetry: [
		self webClient
			httpGet: url
			do: [:req | self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token]]].
	response ifNil: [^ nil].
	response isSuccess ifTrue: [^ response content] ifFalse: [^ nil]