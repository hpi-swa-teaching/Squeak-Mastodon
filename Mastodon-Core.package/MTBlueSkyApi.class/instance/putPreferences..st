endpoints
putPreferences: aCollection

	| url body response |
	url := self buildUrl: '/xrpc/app.bsky.actor.putPreferences'.
	body := '{"preferences":', (self jsonStringFor: aCollection), '}'.
	response := self postRequest: url content: body.
	response ifNil: [^ MTResult error: 'BlueSky preferences update failed'].
	^ MTResult value: true