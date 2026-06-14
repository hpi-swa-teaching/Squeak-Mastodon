loading
getImageFrom: anUrl

	| doc form image len suffix cachedForm |
	anUrl ifNil: [^ nil].
	
	cachedForm := MTImageCache default retrieveValueForKey: anUrl.
	cachedForm ifNotNil: [^ MTUIImageMorph new setNewImageFrom: cachedForm].
	
	doc := HTTPSocket httpGet: anUrl.
	doc
		binary;
		reset.
	
	len := anUrl size.
	suffix := anUrl copyFrom: len - 2 to: len.
	
	suffix = 'jpg' ifTrue: [form := ImageReadWriter formFromStream: doc].
	suffix = 'png' ifTrue: [form := PNGReadWriter formFromStream: doc].
	
	MTImageCache default cacheValue: form forKey: anUrl.
	
	image := MTUIImageMorph new.
	image setNewImageFrom: form.
	
	^ image