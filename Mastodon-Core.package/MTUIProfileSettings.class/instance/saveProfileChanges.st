actions
saveProfileChanges

	| fields |
	fields := Dictionary new.
	
	self
		checkDisplayName;
		checkNote.

	fields
		at: 'display_name' put: self profileNameText;
		at: 'note' put: self profileNoteText.
	
	MTMastodonApi getInstance updateCredentials: fields avatar: self editedAvatar form header: nil.
	self profileView render.
	self delete