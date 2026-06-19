helpers
getPublicAppViewRequest: path
	| response |
	response := webClient
		httpGet: 'https://public.api.bsky.app', path
		do: [:req | nil].
	response isSuccess
		ifTrue: [^ response content]
		ifFalse: [^ nil]
