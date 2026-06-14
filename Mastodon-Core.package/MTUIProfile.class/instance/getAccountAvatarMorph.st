render
getAccountAvatarMorph

	| image |
	image := MTMedia imageMorphFrom: self account avatar.
	image ifNil: [self error: 'Could not load avatar'].
	
	^ image
		width: self avatarSize;
		height: self avatarSize;
		yourself