loading
getImageFrom: anUrl

	| doc form image cachedForm |
	anUrl ifNil: [^ nil].
	
	cachedForm := MTImageCache default imageFormFrom: anUrl.
	cachedForm ifNotNil: [^ MTUIImageMorph new setNewImageFrom: cachedForm].
	
	doc := HTTPSocket httpGet: anUrl.
	doc
		binary;
		reset.
	
	(anUrl endsWith: 'jpg') ifTrue: [form := ImageReadWriter formFromStream: doc].
	(anUrl endsWith: 'png') ifTrue: [form := PNGReadWriter formFromStream: doc].
	
	MTImageCache default cache: form from: anUrl.
	
	image := MTUIImageMorph new.
	image setNewImageFrom: form.
	
	^ image