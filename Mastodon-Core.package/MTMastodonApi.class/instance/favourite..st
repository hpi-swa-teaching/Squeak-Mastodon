endpoints
favourite: aStatusID

	| url response |
	url := self buildUrl: '/api/v1/statuses/', aStatusID, '/favourite'.
	response := self postRequest: url.
	response ifNil: [^ MTResult error: 'Mastodon favourite request failed'].
	^ MTResult value: (self class deserialize: response intoObjectOf: MTToot)