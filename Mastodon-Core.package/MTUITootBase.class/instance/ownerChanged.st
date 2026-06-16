change reporting
ownerChanged

	| postWidth |
	self owner ifNil: [^ self].
	self postMorph ifNil: [^ self].
	postWidth := self owner width - 80.
	postWidth := postWidth max: 0.
	self postMorph width: postWidth.
	self accountMorph ifNotNil: [self accountMorph width: postWidth].
	self contentMorph ifNotNil: [self contentMorph width: postWidth].
	self dateMorph ifNotNil: [self dateMorph width: postWidth].