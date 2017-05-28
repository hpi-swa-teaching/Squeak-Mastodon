helpers
getRequest: url
	| response |
	response := webClient httpGet: url
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	response isSuccess 
		ifTrue: [^ response]