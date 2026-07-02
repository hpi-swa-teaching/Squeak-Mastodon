helper
validate: newInput

	validator ifNotNil: [^ self validator value: newInput].
	^ true