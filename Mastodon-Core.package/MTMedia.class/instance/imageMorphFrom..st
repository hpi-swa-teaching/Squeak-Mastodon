as yet unclassified
imageMorphFrom: anUrl

	| doc form image cachedForm fetchUrl |
	anUrl ifNil: [^ nil].
	
	fetchUrl := anUrl.
	
	cachedForm := MTImageCache default retrieveValueForKey: anUrl.
	cachedForm ifNotNil: [^ MTUIImageMorph new setNewImageFrom: cachedForm].
	
	doc := HTTPSocket httpGet: fetchUrl.
	doc
		binary;
		reset.
	
	[form := ImageReadWriter formFromStream: doc] on: Error do: [:e | ^ nil].
	
	MTImageCache default cacheValue: form forKey: anUrl.
	
	image := MTUIImageMorph new.
	image setNewImageFrom: form.
	
	^ image