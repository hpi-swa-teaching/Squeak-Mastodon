helpers
hasToken

	token ifNil: [
		self inform: 'Please login first.'.
		^ false].
	^ true