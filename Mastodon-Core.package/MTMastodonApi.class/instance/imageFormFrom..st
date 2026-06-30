helpers-requesting
imageFormFrom: aURL
	
	| form cachedForm |
	self halt.
	cachedForm := MTImageCache default retrieveValueForKey: aURL.
	cachedForm ifNotNil: [^ cachedForm].
	
	form := ImageReadWriter formFromStream: (self imageStreamFrom: aURL).
	MTImageCache default cacheValue: form forKey: aURL.
	^ form