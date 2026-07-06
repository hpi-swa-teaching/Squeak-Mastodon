accessing-morphs
characterLengthLabel

	^ characterLengthLabel ifNil: [characterLengthLabel := self getCharacterLengthLabel]