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
		
		"WebP check (RIFF....WEBP)"
		((doc size > 12) and: [(doc next: 4) = 'RIFF' asByteArray]) ifTrue: [
			doc next: 4. "skip size"
			(doc next: 4) = 'WEBP' asByteArray ifTrue: [^ nil].
		].
		doc reset.

		form := [ImageReadWriter formFromStream: doc] on: Error do: [nil].
		(form isKindOf: Form) ifFalse: [^ nil].
		
		MTImageCache default cache: form from: anUrl. 
		image := ImageMorph new.
		image setNewImageFrom: form.
		^ image
	] on: Error do: [:ex | ^ nil].