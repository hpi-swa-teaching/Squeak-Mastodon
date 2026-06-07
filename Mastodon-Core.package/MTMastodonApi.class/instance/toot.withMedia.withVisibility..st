endpoints
toot: aString withMedia: aMediaID withVisibility: aVisibility

	^ self
		postRequest: '/api/v1/statuses'
		withParameters: {'status'. aString. 'visibility'. aVisibility. 'media_ids[]'. aMediaID}
		intoCollectionOf: MTToot