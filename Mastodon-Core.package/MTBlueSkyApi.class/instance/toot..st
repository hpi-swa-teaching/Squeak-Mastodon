endpoints
toot: aText
	| url jsonString response currentDid json now |
	currentDid := self getCurrentDid.
	currentDid ifNil: [^ MTResult error: 'Could not determine current user DID'].
	url := self buildUrl: '/xrpc/com.atproto.repo.createRecord'.
	now := DateAndTime now asString.
	jsonString := '{"repo":"', currentDid, '","collection":"app.bsky.feed.post","record":{"$type":"app.bsky.feed.post","text":"', (self escapeJsonString: aText), '","createdAt":"', now, '"}}'.
	response := self postRequest: url content: jsonString.
	response ifNil: [^ MTResult error: 'BlueSky post request failed'].
	json := self deserialize: response.
	^ MTResult value: (json at: 'uri' ifAbsent: [''])