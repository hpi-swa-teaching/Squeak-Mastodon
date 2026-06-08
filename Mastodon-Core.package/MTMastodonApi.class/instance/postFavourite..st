endpoints
postFavourite: aStatusID

	^ self postRequest: '/api/v1/statuses/', aStatusID, '/favourite' intoObjectOf: MTToot