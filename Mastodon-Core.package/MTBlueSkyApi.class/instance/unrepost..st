endpoints
unrepost: aRepostUri

	| url jsonString response parts repo rkey |
	parts := aRepostUri findTokens: '/'.
	parts size < 4 ifTrue: [^ MTResult error: 'Invalid repost URI'].
	repo := parts second.
	rkey := parts fourth.
	url := self buildUrl: '/xrpc/com.atproto.repo.deleteRecord'.
	jsonString := '{"repo":"', repo, '","collection":"app.bsky.feed.repost","rkey":"', rkey, '"}'.
	response := self postRequest: url content: jsonString.
	response ifNil: [^ MTResult error: 'BlueSky unrepost request failed'].
	^ MTResult value: true