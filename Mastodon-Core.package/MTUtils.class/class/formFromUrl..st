image
formFromUrl: anUrl

	| doc form |
	anUrl ifNil: [^ nil].
	
	doc := HTTPSocket httpGet: anUrl.
	doc
		binary;
		reset.
	
	[form := ImageReadWriter formFromStream: doc] on: Error do: [:e | ^ nil].
	
	^ form