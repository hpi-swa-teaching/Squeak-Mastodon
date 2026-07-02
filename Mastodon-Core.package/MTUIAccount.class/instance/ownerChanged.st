change reporting
ownerChanged

	| contentWidth |
	self owner ifNil: [^ self].
	contentWidth := self owner width - 120 max: 0.
	self content ifNotNil: [self content width: contentWidth].
	self header ifNotNil: [self header width: contentWidth].
	self text ifNotNil: [self text width: contentWidth]