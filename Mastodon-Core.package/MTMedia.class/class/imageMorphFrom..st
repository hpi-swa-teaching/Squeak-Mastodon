loading
imageMorphFrom: anUrl
|doc form image cachedForm|
	anUrl ifNil: [^nil].
	
	cachedForm := MTImageCache default imageFormFrom: anUrl.
	cachedForm ifNotNil: [^ (MTUIImageMorph new) setNewImageFrom: cachedForm].

	doc := HTTPSocket httpGet: anUrl.
	doc binary; reset.
	
	[form := ImageReadWriter formFromStream: doc] on: Error do: [:e | ^ nil].
	
	MTImageCache default cache: form from: anUrl. 
		
	image := MTUIImageMorph new.
	image setNewImageFrom: form.
	^ image