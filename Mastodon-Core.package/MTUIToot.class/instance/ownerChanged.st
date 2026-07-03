layout
ownerChanged

	| postWidth |
	self owner ifNil: [^ self].
	self postMorph ifNil: [^ self].
	postWidth := self owner width - 80.
	postWidth := postWidth max: 0.
	super ownerChanged.
	self reblogMorph ifNotNil: [self reblogMorph width: postWidth]