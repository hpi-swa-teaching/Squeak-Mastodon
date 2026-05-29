initialization
updateProfile 
	| text dict|
	mastodonApi token isNil ifTrue: [
		updateStatusLabel contents: 'Please log in first.'.
		^ false].
	
	text := usernameUpdateTextField contents asString.
	text size > 30
		ifTrue: [usernameUpdateTextField contents: '   Not more than 30 characters username allowed.'.
			^ false].
	
	text := descriptionTextField contents asString.
	text size > 160
		ifTrue: [descriptionTextField contents: '   Not more than 160 characters description allowed.'.
			^ false].
		
	dict := self uploadPictures.
	dict at: 'display_name' put: self usernameUpdateTextField contents.
	dict at: 'note' put: self descriptionTextField contents.
	
	[mastodonApi updateCredentials: dict. 
		updateStatusLabel contents: '   Profile updated successfully']
		on: Error do: [:e | updateStatusLabel contents: ('   Failed to update profile: ', e messageText)].