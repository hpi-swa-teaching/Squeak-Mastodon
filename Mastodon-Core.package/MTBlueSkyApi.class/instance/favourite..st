endpoints
favourite: aToot
	| url body response json createdAt |
	(did isNil or: [aToot cid isNil]) ifTrue: [^ MTResult error: 'BlueSky like failed'].
	createdAt := DateAndTime now asUTC printString.
	url := self buildUrl: '/xrpc/com.atproto.repo.createRecord'.
	body := '{"repo":"', did,
		'","collection":"app.bsky.feed.like",',
		'"record":{"$type":"app.bsky.feed.like",',
		'"subject":{"uri":"', aToot id, '","cid":"', aToot cid, '"},',
		'"createdAt":"', createdAt, '"}}'.
	response := self postRequest: url content: body.
	response ifNil: [^ MTResult error: 'BlueSky like request failed'].
	[json := self deserialize: response]
		on: Error do: [:ex | ^ MTResult error: 'BlueSky like response parsing failed'].
	aToot likeUri: (json at: 'uri' ifAbsent: [nil]).
	aToot favourited: true.
	aToot favouritesCount: aToot favouritesCount + 1.
	^ MTResult value: aToot