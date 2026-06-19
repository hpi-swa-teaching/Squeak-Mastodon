tests
testDirectReplyIsIndented

	| thread root reply |
	root := MTToot new id: '1'; inReplyToID: nil; yourself.
	reply := MTToot new id: '2'; inReplyToID: '1'; yourself.
	thread := MTUIThread new.
	thread rootToot: root.
	thread computeDepthsFor: {root. reply}.
	self assert: (thread indentForToot: reply) equals: 50