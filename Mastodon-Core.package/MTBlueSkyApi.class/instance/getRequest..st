helpers
getRequest: url
	| response |
	Transcript show: 'BlueSky API request: ', url; cr.
	response := webClient httpGet: url
		do: [:req | self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token]].
	response isSuccess
		ifTrue: [
			Transcript show: 'BlueSky API request successful: ', url; cr.
			^ response content]
		ifFalse: [
			Transcript show: 'BlueSky API request failed: ', url; cr.
			Transcript show: 'HTTP Status: ', response code asString; cr.
			Transcript show: 'Response: ', response content; cr.
			^ nil].