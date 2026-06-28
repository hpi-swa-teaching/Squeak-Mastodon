tests
testRootHasNoIndent

	| thread root |
	root := MTToot new id: '1'; inReplyToID: nil; yourself.
	thread := MTUIThread new.
	thread rootToot: root.
	thread computeDepthsFor: {root}.
	self assert: (thread indentForToot: root) equals: 0