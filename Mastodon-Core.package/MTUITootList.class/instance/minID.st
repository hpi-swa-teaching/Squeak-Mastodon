accessing
minID

	^ (self toots detectMax: [:toot | toot tootTime]) id