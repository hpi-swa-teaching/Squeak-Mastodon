endpoints
getAccount: anAccountID
	| url response |
	url := self baseURL, '/api/v1/accounts/', anAccountID.
	response := self getRequest: url.
	^ MTResult value: (self deserialize: (response content) intoObjectOf: MTAccount).