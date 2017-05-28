endpoints
follow: aUserID
	| url response |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/follow'.
	response := self getRequest: url.
	^ MTResult value: (self deserialize: (response content) intoObjectOf: MTRelationship).