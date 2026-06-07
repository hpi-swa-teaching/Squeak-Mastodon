endpoints
favourite: aStatusID

	^ self getRequestAt: '/api/v1/statuses/', aStatusID, '/favourite' intoObjectOf: MTToot