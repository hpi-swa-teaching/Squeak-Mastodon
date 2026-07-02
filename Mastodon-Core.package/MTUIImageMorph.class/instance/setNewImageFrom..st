image
setNewImageFrom: anImageMorph

	| source rounded |
	source := anImageMorph.
	
	rounded := Form extent: source extent depth: 32.
	rounded fillColor: Color transparent.
	
	(FormCanvas on: rounded)
		fillRoundRect: (0 @ 0 extent: source extent)
		radius: self cornerRadius
		fillStyle: (InfiniteForm with: source).
	
	super setNewImageFrom: rounded