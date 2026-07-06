accessing
maxID

	^ (self toots detectMax: [:toot | toot createdAt]) id