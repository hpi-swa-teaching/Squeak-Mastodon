loading
imageMorphFrom: anUrl

	| doc form image cachedForm providerKey fetchUrl |
	anUrl ifNil: [^ nil].
	
	fetchUrl := anUrl.
	
	cachedForm := MTImageCache default imageFormFrom: anUrl.
	cachedForm ifNotNil: [^ MTUIImageMorph new setNewImageFrom: cachedForm].
	
	providerKey := MTSettingsStore default at: #provider ifAbsent: [#mastodon].
	providerKey isString ifTrue: [providerKey := providerKey asLowercase asSymbol].
	
	providerKey = #bluesky ifTrue: [fetchUrl := 'https://webp-converter.dropping.workers.dev?url=', anUrl].
	
	doc := HTTPSocket httpGet: fetchUrl.
	doc
		binary;
		reset.
	
	form := ImageReadWriter formFromStream: doc.
	
	MTImageCache default cache: form from: anUrl.
	
	image := MTUIImageMorph new.
	image setNewImageFrom: form.
	
	^ image