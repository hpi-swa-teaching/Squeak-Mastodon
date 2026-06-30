endpoints
tootWithParameters: aDictionary

	| json |
	json := self firstTootJson.
	(aDictionary at: 'status') ifNotEmpty: [json at: 'content' put: (aDictionary at: 'status')].
	(aDictionary at: 'visibility') ifNotEmpty: [json at: 'visibility' put: (aDictionary at: 'visibility')].
	(aDictionary at: 'media_ids[]') ifNotEmpty: [json at: 'media_attachments' put: {self mediaJson}].
	
	^ MTToot from: json