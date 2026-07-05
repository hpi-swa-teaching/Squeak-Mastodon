endpoints
reblog: aStatusID

	| url response |
	url := self buildUrl: '/api/v1/statuses/', aStatusID, '/reblog'.
	response := self postRequest: url.
	response ifNil: [^ MTResult error: 'Mastodon reblog request failed'].
	^ MTResult value: (self class deserialize: response intoObjectOf: MTToot)