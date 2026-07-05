helpers
imageEmbedJsonFor: aBlob

	| link |
	link := (aBlob at: 'ref' ifAbsent: [Dictionary new]) at: '$link' ifAbsent: [''].
	^ '{"$type":"app.bsky.embed.images","images":[{"alt":"","image":{"$type":"blob","ref":{"$link":"', link, '"},"mimeType":"', (aBlob
			at: 'mimeType'
			ifAbsent: ['image/png']), '","size":', (aBlob at: 'size' ifAbsent: [0]) printString, '}}]}'