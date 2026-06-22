actions
changeProfileImage

	| newAvatar |
	newAvatar := self loadImage ifNil: [^ nil].
	newAvatar := newAvatar scaledToSize: self defaultWidth @ self defaultWidth.
	
	self editedAvatar: newAvatar.
	
	self avatarImageMorph
		image: newAvatar;
		changed