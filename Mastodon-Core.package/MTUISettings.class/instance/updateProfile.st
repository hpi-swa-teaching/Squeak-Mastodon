initialization
updateProfile

	| text dict |
	self mastodonApi isAuthenticated ifFalse: [^ self].
	
	text := self usernameUpdateTextField contents asString.
	text size > self maxUsernameSize ifTrue: [
		self inform: 'Not more than ', self maxUsernameSize, ' characters username allowed.'.
		^ self].
	
	text := self descriptionTextField contents asString.
	text size > self maxProfileDescriptionSize ifTrue: [
		self inform: 'Not more than ', self maxProfileDescriptionSize, ' characters description allowed.'.
		^ self].
	
	dict := self uploadPictures.
	dict at: 'display_name' put: self usernameUpdateTextField contents.
	dict at: 'note' put: self descriptionTextField contents.
	
	self mastodonApi updateCredentials: dict