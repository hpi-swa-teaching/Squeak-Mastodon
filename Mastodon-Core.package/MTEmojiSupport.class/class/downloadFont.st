as yet unclassified
downloadFont

	| doc fileStream |
	[doc := HTTPSocket httpGet: 'https://fonts.gstatic.com/s/notoemoji/v62/bMrnmSyK7YY-MEu6aWjPDs-ar6uWaGWuob-r0jwv.ttf'.
	 doc isString ifTrue: [^ self].
	 doc binary; reset.
	 fileStream := FileStream newFileNamed: (FileDirectory default fullNameFor: 'NotoEmoji-Regular.ttf').
	 [fileStream binary; nextPutAll: doc contents] ensure: [fileStream close]]
		on: Error do: []