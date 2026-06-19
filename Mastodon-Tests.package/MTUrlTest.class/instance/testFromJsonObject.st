as yet unclassified
testFromJsonObject
	| jsonObject jsonUrls url |
	
	jsonUrls := (Json new stream: (ReadStream on: DataProvider urlsJson )) readAny.
	jsonUrls do: [:j|
		jsonObject := j].
	url := MTUrl from: jsonObject.
	
	self assert: (url expandedUrl) equals: (jsonObject at: 'expanded_url').
	self assert: (url displayUrl) equals: (jsonObject at: 'display_url').
	self assert: (url shortUrl) equals: (jsonObject at: 'url').