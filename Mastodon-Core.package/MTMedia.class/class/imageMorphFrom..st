loading
imageMorphFrom: anUrl
|doc form image cachedForm providerKey placeholderForm|
	anUrl ifNil: [^nil].

	providerKey := MTSettingsStore default at: #provider ifAbsent: [#mastodon].
	providerKey isString ifTrue: [providerKey := providerKey asLowercase asSymbol].
	providerKey = #bluesky ifTrue: [
		placeholderForm := Form extent: 48@48 depth: 32.
		placeholderForm fillColor: Color lightGray.
		image := ImageMorph new.
		image setNewImageFrom: placeholderForm.
		^ image].

	cachedForm := MTImageCache default imageFormFrom: anUrl.
	cachedForm ifNotNil: [^ (ImageMorph new) setNewImageFrom: cachedForm].

	doc := HTTPSocket httpGet: anUrl.
	doc binary; reset.
	
	form := ImageReadWriter formFromStream: doc.
	
	MTImageCache default cache: form from: anUrl. 

	image := ImageMorph new.
	image setNewImageFrom: form.
	^ image