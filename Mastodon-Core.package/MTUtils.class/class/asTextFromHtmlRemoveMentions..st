helper
asTextFromHtmlRemoveMentions: aString

	| xmlDocument result |
	xmlDocument := XMLDOMParser parseDocumentFrom: aString readStream.
	self assert: (xmlDocument isKindOf: XMLDocument).
	Transcript show: 'funktion'; cr.
	
	result := String streamContents: [:stream |
		xmlDocument elementsDo: [:t |
			Transcript show: 'schleife'; cr.
			(t attributeAt: #class) = 'h-card'
				ifTrue: [
					Transcript show: 'halo'; cr.
					Transcript show: t asString; cr]
				ifFalse: [stream nextPutAll: t asString]]].
	
	^ self asTextFromHtml: result