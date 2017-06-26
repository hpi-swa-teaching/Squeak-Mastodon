endpoints
getRelationship: anAccountID
	| url response |
	url := self buildUrl: '/api/v1/accounts/relationships?id=', anAccountID.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoCollectionOf: MTRelationship).