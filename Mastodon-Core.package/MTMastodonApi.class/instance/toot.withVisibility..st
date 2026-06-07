endpoints
toot: aString withVisibility: aVisibility

	^ self
		postRequest: '/api/v1/statuses'
		withParameters: {'status'. aString. 'visibility'. aVisibility}
		intoObjectOf: MTToot