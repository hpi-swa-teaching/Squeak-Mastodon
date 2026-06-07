endpoints
unfavourite: aStatusID

	^ self getRequestAt: '/api/v1/statuses/', aStatusID, '/unfavourite' intoObjectOf: MTToot