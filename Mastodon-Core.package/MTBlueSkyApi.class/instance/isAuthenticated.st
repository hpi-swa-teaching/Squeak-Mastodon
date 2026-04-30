helpers
isAuthenticated
	Transcript show: 'MTBlueSkyApi isAuthenticated called. Token: ', self token asString; cr.
	token ifNil: [self inform: 'Please login first.'. ^ false].
	^ true