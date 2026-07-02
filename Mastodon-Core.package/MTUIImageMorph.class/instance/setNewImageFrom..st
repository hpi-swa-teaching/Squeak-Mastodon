image
setNewImageFrom: anImageMorph

	| image rounded |
	image := anImageMorph.
	
	rounded := Form extent: image extent depth: 32.
	rounded fillColor: Color transparent.
	
	(FormCanvas on: rounded)
		fillRoundRect: (0 @ 0 extent: image extent)
		radius: self cornerRadius
		fillStyle: (InfiniteForm with: image).
	
	super setNewImageFrom: rounded