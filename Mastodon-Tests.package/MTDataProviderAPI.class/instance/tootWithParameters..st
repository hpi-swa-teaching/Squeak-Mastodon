endpoints
tootWithParameters: aDictionary

	| json |
	tootWithParametersCalled := true.
	
	json := MTDataProvider firstTootJson.
	(aDictionary includesKey: 'status') ifTrue: [json at: 'content' put: (aDictionary at: 'status')].
	(aDictionary includesKey: 'visibility') ifTrue: [json at: 'visibility' put: (aDictionary at: 'visibility')].
	(aDictionary includesKey: 'quote_approval_policy') ifTrue: [json at: 'quote_approval_policy' put: (aDictionary at: 'quote_approval_policy')].
	(aDictionary includesKey: 'media_ids[]') ifTrue: [
		tootWithParameterAndMediaCalled := true.
		json at: 'media_attachments' put: {MTDataProvider firstMediaJson}].
	
	^ MTToot from: json