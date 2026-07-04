generated
defaultImage

	| image |
	image := Dictionary new.
	image at: 'id' put: self defaultImageId.
	image at: 'type' put: 'image'.
	image at: 'url' put: self defaultImageUrl.
	image at: 'preview_url' put: self defaultImagePreviewUrl.
	
	^ image