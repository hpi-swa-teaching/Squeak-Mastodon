helpers
deleteRequest: url

	| response |
	response := webClient
		httpDelete: url
		do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	response isSuccess ifTrue: [^ response content
	"utf8ToSqueak"]