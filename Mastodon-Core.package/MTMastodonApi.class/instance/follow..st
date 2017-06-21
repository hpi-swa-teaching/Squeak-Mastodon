endpoints
follow: aUserID
	| url response |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/follow'.
	response := self postRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTRelationship).