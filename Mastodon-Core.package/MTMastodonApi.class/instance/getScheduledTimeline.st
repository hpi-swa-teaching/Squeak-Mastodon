endpoints
getScheduledTimeline
	| url response |
	url := self buildUrl: '/api/v1/scheduled_statuses'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTScheduledToot)