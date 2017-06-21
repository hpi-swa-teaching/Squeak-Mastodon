endpoints
block: aUserID
	| url response |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/block'.
	response := self postRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTRelationship).