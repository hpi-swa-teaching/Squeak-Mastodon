image
imageFormFrom: anUrl
"Returns ImageForm if found in cache, otherwise nil"
	^ self at: anUrl ifAbsent: []