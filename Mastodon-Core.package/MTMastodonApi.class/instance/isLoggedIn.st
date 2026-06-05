helpers
isLoggedIn

	self hasToken ifFalse: [
		self inform: 'Please login first.'.
		^ false].
	^ true