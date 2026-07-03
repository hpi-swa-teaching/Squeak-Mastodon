helpers-requesting
postContextFrom: aJsonString

	| context toots |
	context := self deserialize: aJsonString.
	toots := Dictionary new
		at: #ancestors put: ((context at: 'ancestors') collect: [:json | MTToot from: json]);
		at: #descendants put: ((context at: 'descendants') collect: [:json | MTToot from: json]);
		yourself.
	
	^ toots