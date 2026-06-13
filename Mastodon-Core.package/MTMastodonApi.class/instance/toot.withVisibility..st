endpoints
toot: aString withVisibility: aVisibility

	^ self
		postRequest: '/api/v1/statuses'
		withParameters: (Dictionary newFromPairs: {'status'. aString. 'visibility'. aVisibility})
		intoObjectOf: MTToot