endpoints
getMentionSince: aSinceID

	| url response |
	url := self buildUrl: '/api/v1/notifications?types[]=mention&since_id=', aSinceID.
	
	response := self getRequest: url.
	
	^ MTResult value: ((self deserialize: response) collect: [:each | MTMention from: each])