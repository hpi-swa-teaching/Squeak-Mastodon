endpoints
unfavourite: aStatusID

	^ self getObjectAt: '/api/v1/statuses/', aStatusID, '/unfavourite' as: MTToot