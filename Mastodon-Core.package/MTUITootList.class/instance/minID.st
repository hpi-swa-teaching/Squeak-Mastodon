accessing
minID

	^ (self toots detectMin: [:toot | toot createdAt]) id