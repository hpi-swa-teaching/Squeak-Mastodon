endpoints
favourite: aStatusID

	^ self getObjectAt: '/api/v1/statuses/', aStatusID, '/favourite' as: MTToot