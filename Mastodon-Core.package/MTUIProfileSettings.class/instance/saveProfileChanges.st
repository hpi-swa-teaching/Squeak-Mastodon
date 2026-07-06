actions
saveProfileChanges

	| fields avatarForm |
	(self checkDisplayName and: [self checkNote]) ifFalse: [^ nil].
	
	fields := Dictionary new
		at: 'display_name' put: self nameText contents asString;
		at: 'note' put: self noteText contents asString;
		yourself.
		
	avatarForm := self avatarField image form.
	
	self mastodonApi updateCredentials: fields avatar: avatarForm header: nil.
	self
		changeViewToProfileView;
		delete