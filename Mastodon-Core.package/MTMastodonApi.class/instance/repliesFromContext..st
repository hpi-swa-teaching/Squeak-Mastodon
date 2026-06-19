helpers-requesting
repliesFromContext: aJsonString

	| context |
	context := self deserialize: aJsonString.
	^ MTResult value: ((context at: 'descendants') collect: [:json | MTToot from: json])
