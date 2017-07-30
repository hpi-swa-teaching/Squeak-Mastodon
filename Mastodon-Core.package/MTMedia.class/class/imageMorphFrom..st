loading
imageMorphFrom: anUrl
|doc form image cachedForm|
	anUrl ifNil: [^nil].
	
	cachedForm := MTImageCache default imageFormFrom: anUrl.
	cachedForm ifNotNil: [^ (ImageMorph new) setNewImageFrom: cachedForm].

	doc := HTTPSocket httpGet: anUrl.
	doc binary; reset.
	
	form := ImageReadWriter formFromStream: doc.
	
	MTImageCache default cache: form from: anUrl. 
		
	image := ImageMorph new.
	image setNewImageFrom: form.
	^ image