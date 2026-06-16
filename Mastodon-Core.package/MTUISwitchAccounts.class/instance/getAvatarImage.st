helpers
getAvatarImage
	
	self account avatar ifNil: [^ self defaultAvatar].
	ImageMorph new image: (MTUtils formFromUrl: self account avatar)