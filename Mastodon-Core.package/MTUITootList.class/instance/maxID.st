accessing
maxID

	^ (self toots detectMin: [:toot | toot createdAt]) id