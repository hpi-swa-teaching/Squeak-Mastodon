helpers
appendToots: anOrderedCollection

	anOrderedCollection ifNotEmpty: [
		self
			toots: self toots, anOrderedCollection;
			render]