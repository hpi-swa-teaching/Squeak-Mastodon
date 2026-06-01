endpoints
unfavourite: aStatusID
	| url response |
	url := self buildUrl: '/api/v1/statuses/', aStatusID ,'/unfavourite'.
	response := self postRequest: url.
	response ifNil: [^ MTResult error: 'Mastodon unfavourite request failed'].
	^ MTResult value: (self class deserialize: response intoObjectOf: MTToot)