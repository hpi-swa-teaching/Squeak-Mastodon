render
render

	self removeAllMorphs.
	self addHeader.
	self expanded ifTrue: [self addContents]