applying
stripJoiners: aString

	^ aString reject: [:c | c asInteger = self zeroWidthJoiner]