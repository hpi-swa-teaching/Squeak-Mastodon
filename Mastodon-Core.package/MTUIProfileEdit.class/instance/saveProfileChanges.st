actions
saveProfileChanges

	| fields |
	fields := Dictionary new.
	
	self
		checkDisplayName;
		checkNote.
	
	fields
		at: 'display_name' put: self editedDisplayName;
		at: 'note' put: self editedBio.
	
	"MTMastodonApi getInstance updateCredentials: fields avatar: self editedAvatar header: nil."
	self profileView render.
	self delete