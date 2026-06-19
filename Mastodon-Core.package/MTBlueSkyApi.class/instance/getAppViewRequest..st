helpers
getAppViewRequest: url
	| response |
	response := webClient httpGet: url
		do: [:req |
			self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token].
			req addHeader: 'atproto-proxy' value: 'did:web:api.bsky.app#bsky_appview'].
	response isSuccess
		ifTrue: [^ response content]
		ifFalse: [^ nil]
