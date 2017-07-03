endpoints
block: aUserID
	| url response |
	url := self buildUrl: '/api/v1/accounts/', aUserID ,'/block'.
	response := self postRequest: url.
	^ MTResult value: (self class deserialize: response intoObjectOf: MTRelationship).