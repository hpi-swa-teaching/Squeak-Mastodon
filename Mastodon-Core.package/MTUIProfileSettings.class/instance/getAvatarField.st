render
getAvatarField

	^ self getAvatarImage
		width: self fieldWidth;
		height: self fieldWidth;
		on: #mouseUp send: #changeProfileImage to: self;
		yourself