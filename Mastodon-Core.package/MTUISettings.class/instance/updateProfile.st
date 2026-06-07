actions
updateProfile 
	| dict avatar header |
	mastodonApi token isNil ifTrue: [
		updateStatusLabel contents: '   Please log in first.'.
		^ false].
	
	usernameUpdateTextField contents asString size > 30 ifTrue: [
		usernameUpdateTextField contents: '   Not more than 30 characters username allowed.'.
			^ false].
	
	descriptionTextField contents asString size > 160 ifTrue: [
		descriptionTextField contents: '   Not more than 160 characters description allowed.'.
			^ false].
		
	dict := Dictionary new.
	dict at: 'display_name' put: self usernameUpdateTextField contents asString.
	dict at: 'note' put: self descriptionTextField contents asString.
	
	avatar := self avatarImageMorph.
	header := self headerImageMorph.
	
	[(avatar isNil and: [header isNil])
		ifTrue: [mastodonApi updateCredentials: dict]
		ifFalse: [mastodonApi updateCredentials: dict avatar: avatar header: header].
	self avatarImageMorph: nil.
	self headerImageMorph: nil.
	updateStatusLabel contents: '   Profile updated successfully']
		on: Error do: [:e | updateStatusLabel contents: ('   Failed to update profile: ', e messageText)]