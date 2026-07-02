tests
testWebClient

	| api client |
	api := MTMastodonApi new.
	client := WebClient new.
	api webClient: client.
	
	self assert: api webClient equals: client