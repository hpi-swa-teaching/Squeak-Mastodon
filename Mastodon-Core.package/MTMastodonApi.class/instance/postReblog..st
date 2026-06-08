endpoints
postReblog: aStatusID

	^ self postRequest: '/api/v1/statuses/', aStatusID, '/reblog' intoObjectOf: MTToot