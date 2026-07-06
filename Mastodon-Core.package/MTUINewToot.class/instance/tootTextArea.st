accessing-morphs
tootTextArea

	^ tootTextArea ifNil: [tootTextArea := self getTextArea]