endpoints
tootWithParameters: aParameterCollection

	| json associations |
	tootWithParametersCalled := true.
	
	associations := aParameterCollection isDictionary
		ifTrue: [aParameterCollection associations]
		ifFalse: [aParameterCollection].

	json := MTDataProvider firstTootJson.
	associations do: [:each |
		each key = 'status' ifTrue: [json at: 'content' put: each value].
		each key = 'visibility' ifTrue: [json at: 'visibility' put: each value].
		each key = 'quote_approval_policy' ifTrue: [json at: 'quote_approval_policy' put: each value].
    		each key = 'media_ids[]' ifTrue: [
			tootWithParameterAndMediaCalled := true.
			json at: 'media_attachments' put: {MTDataProvider firstMediaJson}]].

	^ MTToot from: json