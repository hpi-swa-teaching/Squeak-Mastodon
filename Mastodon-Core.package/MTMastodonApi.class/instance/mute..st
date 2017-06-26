endpoints
mute: aUserID
	| url response |
	url := self buildUrl: '/api/v1/accounts/', aUserID ,'/mute'.
	response := self postRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTRelationship).