render
accountRowFor: aCredential

	| row avatar name handle baseUrl |
	avatar := self avatarMorphFor: aCredential.
	name := self displayNameFor: aCredential.
	handle := self usernameFor: aCredential.
	baseUrl := aCredential baseURL ifNil: ['Unknown server'].
	
	row := self getRowContainer.
	
	row
		addMorphBack: avatar;
		addMorphBack: (self labelFor: name, String cr, handle, String cr, baseUrl).
	
	row on: #mouseUp send: #switchToCredentials: to: self withValue: aCredential.
	
	^ row