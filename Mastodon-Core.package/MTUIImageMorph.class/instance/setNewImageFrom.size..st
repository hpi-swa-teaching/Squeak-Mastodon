as yet unclassified
setNewImageFrom: anImage size: aPoint

	| image rounded |
	image := anImage scaledToSize: aPoint.
	
	rounded := Form extent: image extent depth: 32.
	rounded fillColor: Color transparent.
	
	(FormCanvas on: rounded)
		fillRoundRect: (0 @ 0 extent: image extent)
		radius: self cornerRadius
		fillStyle: (InfiniteForm with: image).
	
	super setNewImageFrom: rounded