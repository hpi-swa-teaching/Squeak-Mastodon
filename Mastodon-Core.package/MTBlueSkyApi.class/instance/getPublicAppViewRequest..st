helpers
getPublicAppViewRequest: path

	| response |
	response := self retryNetworkRequest: [ | client |
		client := (self webClient isKindOf: WebClient) ifTrue: [WebClient new] ifFalse: [self webClient].
		[
			client httpGet: 'https://public.api.bsky.app', path do: [:req |
				req addHeader: 'Accept-Encoding' value: 'identity'.
				req addHeader: 'Connection' value: 'close']] ensure: [(client isKindOf: WebClient) ifTrue: [client close]]].
	response ifNil: [^ nil].
	response isSuccess ifTrue: [^ response content] ifFalse: [^ nil]