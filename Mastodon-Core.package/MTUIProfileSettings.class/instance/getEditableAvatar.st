render
getEditableAvatar

	self avatarImageMorph: self getAvatarImage.
	self avatarImageMorph ifNil: [^ self error: 'Could not load avatar'].
	
	^ self avatarImageMorph
		width: self defaultWidth;
		height: self defaultWidth;
		on: #mouseUp send: #changeProfileImage to: self;
		yourself