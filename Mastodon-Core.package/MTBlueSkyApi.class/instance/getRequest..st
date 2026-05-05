helpers
getRequest: url
	| response |
	response := webClient httpGet: url
		do: [:req | self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token]].
	response isSuccess
		ifTrue: [^ response content]
		ifFalse: [
			self inform: 'BlueSky API request failed: ', url, '. HTTP Status: ', response code asString.
			^ nil].