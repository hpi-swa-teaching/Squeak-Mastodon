helper
asTextFromHtml: aString removeClass: aClass

	| xmlDocument result |
	xmlDocument := XMLDOMParser parseDocumentFrom: aString readStream.
	self assert: (xmlDocument isKindOf: XMLDocument).
	
	result := String streamContents: [:stream | xmlDocument elementsDo: [:t | (t attributeAt: #class) = aClass ifFalse: [stream nextPutAll: t asString]]].
	
	^ self asTextFromHtml: result