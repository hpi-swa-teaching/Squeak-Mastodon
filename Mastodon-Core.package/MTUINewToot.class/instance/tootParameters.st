actions
tootParameters

	| parameters |
	parameters := Dictionary new
		at: 'status' put: self tootTextArea contents asString;
		at: 'visibility' put: self visibilitySetting;
		at: 'quote_approval_policy' put: self quotePolicySetting;
		yourself.
		
	self inReplyToId ifNotNil: [parameters at: 'in_reply_to_id' put: self inReplyToId].
	
	^ parameters