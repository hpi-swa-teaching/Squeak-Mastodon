helpers
getAvatarImage
	
	^ ImageMorph new image: (self mastodonApi imageFormFrom: self account avatar)