actions
testTootParametersWithoutReply

	| newTootView parameters |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: 'Test'.
	newTootView
		visibilitySetting: 'public';
		quotePolicySetting: 'followers';
		inReplyToId: nil.
	
	parameters := newTootView tootParameters.
	
	self assert: (parameters at: 'status') equals: 'Test'.
	self assert: (parameters at: 'visibility') equals: 'public'.
	self assert: (parameters at: 'quote_approval_policy') equals: 'followers'.
	self deny: (parameters includesKey: 'in_reply_to_id')