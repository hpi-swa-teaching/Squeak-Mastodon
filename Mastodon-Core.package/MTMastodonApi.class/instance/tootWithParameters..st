endpoints
tootWithParameters: aDictionary

	^ self postRequest: '/api/v1/statuses' withParameters: aDictionary intoObjectOf: MTToot