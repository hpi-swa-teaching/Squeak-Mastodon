helpers
getRequest: url
	| response |
	[
		response := webClient httpGet: url
			do: [:req | self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token]]
	] on: Error do: [:ex |
		(webClient isKindOf: WebClient) ifTrue: [webClient close].
		^ nil].
	response isSuccess
		ifTrue: [^ response content]
		ifFalse: [
			^ nil].
