endpoints
block: aUserID
	| url response |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/block'.
	response := self getRequest: url.
	^ MTResult value: (self deserialize: (response content) intoObjectOf: MTRelationship).