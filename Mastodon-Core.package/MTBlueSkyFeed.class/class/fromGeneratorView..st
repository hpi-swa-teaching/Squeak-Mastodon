instance creation
fromGeneratorView: aDictionary
	| uri |
	uri := aDictionary at: 'uri' ifAbsent: [''].
	^ self new
		displayName: (aDictionary at: 'displayName' ifAbsent: [uri]);
		uri: uri;
		sourceType: #feed;
		pinned: false;
		yourself
