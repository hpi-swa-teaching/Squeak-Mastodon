helpers
getAppViewRequest: url
	| response |
	[
		response := webClient httpGet: url
			do: [:req |
				self token ifNotNil: [req addHeader: 'Authorization' value: 'Bearer ', self token].
				req addHeader: 'Accept-Encoding' value: 'identity'.
				req addHeader: 'Connection' value: 'close'.
				req addHeader: 'atproto-proxy' value: 'did:web:api.bsky.app#bsky_appview']
	] on: Error do: [:ex |
		(webClient isKindOf: WebClient) ifTrue: [webClient close].
		^ nil].
	response isSuccess
		ifTrue: [^ response content]
		ifFalse: [^ nil]
