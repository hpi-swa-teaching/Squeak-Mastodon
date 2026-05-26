endpoints
getMention

	| url response |
	url := self buildUrl: '/api/v1/notifications?types[]=mention'.
	
	response := self getRequest: url.
	
	^ MTResult value: ((self deserialize: response) collect: [:each | MTMention from: each])