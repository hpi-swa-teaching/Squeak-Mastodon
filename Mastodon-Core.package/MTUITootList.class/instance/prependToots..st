helpers
prependToots: anOrderedCollection

	anOrderedCollection ifNotEmpty: [
		self toots: anOrderedCollection, self toots.
		self render]