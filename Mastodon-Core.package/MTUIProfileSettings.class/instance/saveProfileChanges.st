actions
saveProfileChanges

	| fields |
	(self checkDisplayName and: [self checkNote]) ifFalse: [^ nil].
	fields := Dictionary new
		at: 'display_name' put: self profileNameText;
		at: 'note' put: self profileNoteText;
		yourself.
	
	self mastodonApi updateCredentials: fields avatar: self editedAvatar form header: nil.
	self
		changeViewToProfileView;
		delete