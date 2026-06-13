endpoints
toot: aString withMedia: aMediaID withVisibility: aVisibility

	^ self
		postRequest: '/api/v1/statuses'
		withParameters: (Dictionary newFromPairs: {'status'. aString. 'visibility'. aVisibility. 'media_ids[]'. aMediaID})
		intoObjectOf: MTToot