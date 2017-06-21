endpoints
getRelationship: anAccountID
	| url response |
	url := self baseURL, '/api/v1/accounts/relationships?id=', anAccountID.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoCollectionOf: MTRelationship).