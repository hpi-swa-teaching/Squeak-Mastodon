accessing
expandUrl
"Replaces the sort version of the url in the text with the expanded version"
|start end expandedText|
	self urls do:[:url|
		start := self text findString: (url shortUrl).
		end := start + url shortUrl size.
		expandedText := 
			(self text copyFrom: 1 to: start -1) ,
			url expandedUrl ,
			(self text copyFrom: end to: (self text size)).
		self text: expandedText].