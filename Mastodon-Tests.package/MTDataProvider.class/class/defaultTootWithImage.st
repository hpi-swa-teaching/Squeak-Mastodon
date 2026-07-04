generated
defaultTootWithImage

	| toot |
	toot := self defaultTootPlain.
	toot at: 'media_attachments' put: {self defaultImage}.
	
	^ toot