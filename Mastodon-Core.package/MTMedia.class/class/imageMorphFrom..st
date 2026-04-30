loading
imageMorphFrom: anUrl
	| doc form image cachedForm |
	anUrl ifNil: [^ nil].
	anUrl isEmpty ifTrue: [^ nil].
	
	cachedForm := MTImageCache default imageFormFrom: anUrl.
	(cachedForm isKindOf: Form) ifTrue: [^ ImageMorph new setNewImageFrom: cachedForm].

	[
		doc := HTTPSocket httpGet: anUrl.
		((doc isNil) or: [doc isKindOf: Error]) ifTrue: [^ nil].
		doc binary; reset.
		form := ImageReadWriter formFromStream: doc.
		(form isKindOf: Form) ifFalse: [^ nil].
		
		MTImageCache default cache: form from: anUrl. 
		image := ImageMorph new.
		image setNewImageFrom: form.
		^ image
	] on: Error do: [:ex |
		Transcript show: 'Error loading image ', anUrl, ': ', ex description; cr.
		^ nil].