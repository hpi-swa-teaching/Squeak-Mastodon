accessing
minID

	^ (self toots detectMin: [:toot | toot tootTime]) id