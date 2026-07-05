actions
changeProfileImage

	| newAvatar |
	newAvatar := self loadImage ifNil: [^ nil].
	
	self changeProfileImageFor: newAvatar