accessing
setNewImageFrom: anImageMorph

	| rounded |
	rounded := Form extent: anImageMorph extent depth: 32.
	rounded fillColor: Color transparent.
	
	(FormCanvas on: rounded)
		fillRoundRect: (0 @ 0 extent: anImageMorph extent)
		radius: self cornerRadius
		fillStyle: (InfiniteForm with: anImageMorph).
	
	super setNewImageFrom: rounded