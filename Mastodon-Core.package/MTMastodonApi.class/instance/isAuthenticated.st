helpers
isAuthenticated

	self token ifNil: [
		self inform: 'Please login first.'.
		^ false].
	^ true