endpoints
unfavourite: aStatusID

	^ self postRequest: '/api/v1/statuses/', aStatusID, '/unfavourite' intoObjectOf: MTToot