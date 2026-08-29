endpoints
getCurrentUser

	| url response |
	url := self buildUrl: '/api/v1/accounts/verify_credentials'.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'Mastodon credentials request failed'].
	^ MTResult value: (self class deserialize: response intoObjectOf: MTAccount)