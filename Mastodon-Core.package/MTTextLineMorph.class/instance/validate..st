helper
validate: newInput

	self validator ifNotNil: [^ self validator value: newInput].
	^ true