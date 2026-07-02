endpoints
getScheduledTimelineSince: sinceId

	| url response |
	url := self buildUrl: '/api/v1/scheduled_statuses?limit=40&since_id=', sinceId.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTScheduledToot)