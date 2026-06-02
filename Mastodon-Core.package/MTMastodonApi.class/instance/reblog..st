endpoints
reblog: aStatusID

	^ self getObjectAt: '/api/v1/statuses/', aStatusID, '/reblog' as: MTToot