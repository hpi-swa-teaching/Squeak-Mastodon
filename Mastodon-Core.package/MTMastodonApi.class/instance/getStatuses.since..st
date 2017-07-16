endpoints
getStatuses: anAccountID since: aSinceID
	| url response |
	url := self buildUrl: '/api/v1/accounts/', anAccountID, '/statuses?since_id=', aSinceID.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTToot).