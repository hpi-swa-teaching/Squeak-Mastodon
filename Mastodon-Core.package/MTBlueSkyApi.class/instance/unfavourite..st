endpoints
unfavourite: aToot
	| url body response rkey |
	(did isNil or: [aToot likeUri isNil]) ifTrue: [^ MTResult error: 'BlueSky unlike failed'].
	rkey := (aToot likeUri subStrings: '/') last.
	url := self buildUrl: '/xrpc/com.atproto.repo.deleteRecord'.
	body := '{"repo":"', did,
		'","collection":"app.bsky.feed.like",',
		'"rkey":"', rkey, '"}'.
	response := self postRequest: url body: body.
	response ifNil: [^ MTResult error: 'BlueSky unlike request failed'].
	aToot likeUri: nil.
	aToot favourited: false.
	aToot favouritesCount: (aToot favouritesCount - 1 max: 0).
	^ MTResult value: aToot