change reporting
ownerChanged

	| postWidth |
	self owner ifNil: [^ self].
	self post ifNil: [^ self].
	postWidth := self owner width - 80.
	postWidth := postWidth max: 0.
	self post width: postWidth.
	self accountMorph ifNotNil: [self accountMorph width: postWidth].
	self textMorph ifNotNil: [self textMorph width: postWidth].
	self reblogMorph ifNotNil: [self reblogMorph width: postWidth].
	self createdAtMorph ifNotNil: [self createdAtMorph width: postWidth]