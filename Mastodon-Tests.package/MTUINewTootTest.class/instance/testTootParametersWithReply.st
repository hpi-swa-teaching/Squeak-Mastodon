actions
testTootParametersWithReply

	| newTootView parameters |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: 'Test'.
	newTootView
		visibilitySetting: 'private';
		quotePolicySetting: 'nobody';
		inReplyToId: MTDataProvider firstAccountID.
	
	parameters := newTootView tootParameters.
	
	self assert: (parameters at: 'status') equals: 'Test'.
	self assert: (parameters at: 'visibility') equals: 'private'.
	self assert: (parameters at: 'quote_approval_policy') equals: 'nobody'.
	self assert: (parameters at: 'in_reply_to_id') equals: MTDataProvider firstAccountID