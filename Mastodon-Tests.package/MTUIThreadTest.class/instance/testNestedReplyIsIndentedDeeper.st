tests
testNestedReplyIsIndentedDeeper

	| thread root reply nested |
	root := MTToot new id: '1'; inReplyToID: nil; yourself.
	reply := MTToot new id: '2'; inReplyToID: '1'; yourself.
	nested := MTToot new id: '3'; inReplyToID: '2'; yourself.
	thread := MTUIThread new.
	thread rootToot: root.
	thread computeDepthsFor: {root. reply. nested}.
	self assert: (thread indentForToot: nested) equals: 100