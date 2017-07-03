endpoints
follow: aUserID
	| url response |
	url := self buildUrl: '/api/v1/accounts/', aUserID ,'/follow'.
	response := self postRequest: url.
	^ MTResult value: (self class deserialize: response intoObjectOf: MTRelationship).