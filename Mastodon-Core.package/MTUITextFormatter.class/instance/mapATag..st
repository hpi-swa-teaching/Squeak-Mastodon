as yet unclassified
mapATag: aTag

	| rx strm result href |
	result := OrderedCollection new.
		
	"<a href=""http://google.de"">"
	rx := 'href\s*=\s*"([^"]+)"' asRegex.
	strm := aTag readStream.
	[rx searchStream: strm]
		whileTrue: [href := rx subexpression: 2].
	result add: (MTUITextURL new url: href).
	^ result