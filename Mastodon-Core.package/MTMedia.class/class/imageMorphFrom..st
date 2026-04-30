loading
imageMorphFrom: anUrl
	| doc form image cachedForm |
	anUrl ifNil: [^ nil].
	anUrl isEmpty ifTrue: [^ nil].
	
	cachedForm := MTImageCache default imageFormFrom: anUrl.
	cachedForm ifNotNil: [^ ImageMorph new setNewImageFrom: cachedForm].

	[
		doc := HTTPSocket httpGet: anUrl.
		(doc isKindOf: Error) ifTrue: [
			Transcript show: 'Failed to download image: ', anUrl; cr.
			^ nil].
		doc binary; reset.
		form := ImageReadWriter formFromStream: doc.
		form ifNil: [^ nil].
		MTImageCache default cache: form from: anUrl. 
		image := ImageMorph new.
		image setNewImageFrom: form.
		^ image
	] on: Error do: [:ex |
		Transcript show: 'Error loading image ', anUrl, ': ', ex description; cr.
		^ nil].