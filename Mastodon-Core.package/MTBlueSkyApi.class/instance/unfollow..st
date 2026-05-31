endpoints
unfollow: aFollowUri
	| url jsonString response parts repo rkey |
	parts := aFollowUri findTokens: '/'.
	parts size < 4 ifTrue: [^ MTResult error: 'Invalid follow URI'].
	repo := parts second.
	rkey := parts fourth.
	url := self buildUrl: '/xrpc/com.atproto.repo.deleteRecord'.
	jsonString := '{"repo":"', repo, '","collection":"app.bsky.graph.follow","rkey":"', rkey, '"}'.
	response := self postRequest: url content: jsonString.
	response ifNil: [^ MTResult error: 'BlueSky unfollow request failed'].
	^ MTResult value: true