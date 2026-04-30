helpers
getRequest: url
	| response |
	response := webClient httpGet: url
		do: [:req | self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token]].
	response isSuccess
		ifTrue: [^ response content]
		ifFalse: [
			Transcript show: 'BlueSky API request failed: ', url; cr.
			Transcript show: 'HTTP Status: ', response code asString; cr.
			Transcript show: 'Response: ', response content; cr.
			^ nil].