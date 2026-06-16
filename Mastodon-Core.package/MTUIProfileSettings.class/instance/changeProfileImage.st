actions
changeProfileImage

	| newAvatar |
	newAvatar := self loadImage scaledToSize: self defaultWidth @ self defaultWidth.
	newAvatar ifNil: [^ nil].
	
	self editedAvatar: newAvatar.
	
	self avatarImageMorph
		image: newAvatar;
		changed