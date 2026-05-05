helpers
getRequest: url
	| response |
	response := webClient httpGet: url
		do: [:req | self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token]].
	response isSuccess
		ifTrue: [^ response content]
		ifFalse: [
			^ nil].