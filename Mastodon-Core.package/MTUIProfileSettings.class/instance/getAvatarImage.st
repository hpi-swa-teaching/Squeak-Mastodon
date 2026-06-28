helpers
getAvatarImage
	
	^ ImageMorph new image: (MTUtils formFromUrl: self account avatar)