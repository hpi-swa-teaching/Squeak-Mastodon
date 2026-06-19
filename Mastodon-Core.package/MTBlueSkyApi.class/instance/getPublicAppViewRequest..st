helpers
getPublicAppViewRequest: path
	| client response |
	client := (webClient isKindOf: WebClient)
		ifTrue: [WebClient new]
		ifFalse: [webClient].
	[
		response := client
			httpGet: 'https://public.api.bsky.app', path
			do: [:req |
				req addHeader: 'Accept-Encoding' value: 'identity'.
				req addHeader: 'Connection' value: 'close']
	] on: Error do: [:ex |
		(client isKindOf: WebClient) ifTrue: [client close].
		^ nil].
	response isSuccess
		ifTrue: [^ response content]
		ifFalse: [^ nil]
