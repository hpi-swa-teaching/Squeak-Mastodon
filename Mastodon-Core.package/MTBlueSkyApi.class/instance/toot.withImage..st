endpoints
toot: aText withImage: aForm
	| url jsonString response currentDid json now blob |
	currentDid := self getCurrentDid.
	currentDid ifNil: [^ MTResult error: 'Could not determine current user DID'].
	blob := self uploadBlobFrom: aForm.
	blob ifNil: [^ MTResult error: 'BlueSky image upload failed'].
	url := self buildUrl: '/xrpc/com.atproto.repo.createRecord'.
	now := self currentTimestamp.
	jsonString := '{"repo":"', currentDid, '","collection":"app.bsky.feed.post","record":{"$type":"app.bsky.feed.post","text":"', (self escapeJsonString: aText), '","createdAt":"', now, '","embed":', (self imageEmbedJsonFor: blob), '}}'.
	response := self postRequest: url content: jsonString.
	response ifNil: [^ MTResult error: 'BlueSky post request failed'].
	json := self deserialize: response.
	^ MTResult value: (json at: 'uri' ifAbsent: [''])