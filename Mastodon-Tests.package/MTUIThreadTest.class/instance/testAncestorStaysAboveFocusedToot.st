tests
testAncestorStaysAboveFocusedToot

	| thread original focused reply |
	original := MTToot new id: '1'; inReplyToID: nil; yourself.
	focused := MTToot new id: '2'; inReplyToID: '1'; yourself.
	reply := MTToot new id: '3'; inReplyToID: '2'; yourself.
	thread := MTUIThread new.
	thread rootToot: focused.
	thread computeDepthsFor: {original. focused. reply}.
	self assert: (thread indentForToot: original) equals: 0.
	self assert: (thread indentForToot: focused) equals: 50.
	self assert: (thread indentForToot: reply) equals: 100