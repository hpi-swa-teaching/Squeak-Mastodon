tests
testWebClient
	| API client |
	API := MTMastodonApi new.
	client := WebClient new.
	API webClient: client.
	
	self assert: (API webClient) equals: (client).