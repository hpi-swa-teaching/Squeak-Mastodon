endpoints
unreblog: aStatusID
	| url response |
	url := self buildUrl: '/api/v1/statuses/', aStatusID ,'/unreblog'.
	response := self postRequest: url.
	response ifNil: [^ MTResult error: 'Mastodon unreblog request failed'].
	^ MTResult value: (self class deserialize: response intoObjectOf: MTToot)