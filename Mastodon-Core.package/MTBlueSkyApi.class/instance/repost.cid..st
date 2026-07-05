endpoints
repost: aPostUri cid: aCid

	| url jsonString response currentDid json now |
	currentDid := self getCurrentDid.
	currentDid ifNil: [^ MTResult error: 'Could not determine current user DID'].
	url := self buildUrl: '/xrpc/com.atproto.repo.createRecord'.
	now := DateAndTime now asString.
	jsonString := '{"repo":"', currentDid, '","collection":"app.bsky.feed.repost","record":{"$type":"app.bsky.feed.repost","subject":{"uri":"', aPostUri, '","cid":"', aCid, '"},"createdAt":"', now, '"}}'.
	response := self postRequest: url content: jsonString.
	response ifNil: [^ MTResult error: 'BlueSky repost request failed'].
	json := self deserialize: response.
	^ MTResult value: (json at: 'uri' ifAbsent: [''])