endpoints
cancelScheduledToot: aStatusID

	| url response |
	url := self buildUrl: '/api/v1/scheduled_statuses/', aStatusID.
	response := self deleteRequest: url.
	^ MTResult error: (self class deserialize: response intoObjectOf: MTError)