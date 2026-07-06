accessing-morphs
nameText

	^ nameText ifNil: [nameText := self getNameText]