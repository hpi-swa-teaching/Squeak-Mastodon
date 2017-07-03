endpoints
getCurrentUser
	| url response |
	url := self buildUrl: '/api/v1/accounts/verify_credentials'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoObjectOf: MTAccount).