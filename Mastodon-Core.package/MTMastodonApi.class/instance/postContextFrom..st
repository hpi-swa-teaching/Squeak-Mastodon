helpers-requesting
postContextFrom: aJsonString

	| context result |
	context := self deserialize: aJsonString.
	result := Dictionary new.
	result at: #ancestors put: ((context at: 'ancestors') collect: [:json | MTToot from: json]).
	result at: #descendants put: ((context at: 'descendants') collect: [:json | MTToot from: json]).
	^ MTResult value: result
