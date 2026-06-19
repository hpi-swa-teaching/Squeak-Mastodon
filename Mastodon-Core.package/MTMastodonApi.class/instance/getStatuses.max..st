endpoints
getStatuses: anAccountID max: aMaxId
	| url response |
	url := self buildUrl: '/api/v1/accounts/', anAccountID, '/statuses?max_id='. aMaxId.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTToot)