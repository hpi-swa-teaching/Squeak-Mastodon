initialization
updateProfile

	| text dict |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	text := usernameUpdateTextField contents asString.
	text size > self maxUsernameSize ifTrue: [
		self inform: 'Not more than ', self maxUsernameSize, ' characters username allowed.'.
		^ false].
	
	text := descriptionTextField contents asString.
	text size > self maxProfileDescriptionSize ifTrue: [
		self inform: 'Not more than ', self maxProfileDescriptionSize, ' characters description allowed.'.
		^ false].
	
	dict := self uploadPictures.
	dict at: 'display_name' put: self usernameUpdateTextField contents.
	dict at: 'note' put: self descriptionTextField contents.
	
	mastodonApi updateCredentials: dict