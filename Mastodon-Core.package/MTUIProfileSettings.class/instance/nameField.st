accessing-morphs
nameField

	^ nameField ifNil: [nameField := self getNameField]