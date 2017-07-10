endpoints
getStatuses: anAccountID
	| url response |
	url := self buildUrl: '/api/v1/accounts/', anAccountID, '/statuses'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTToot).