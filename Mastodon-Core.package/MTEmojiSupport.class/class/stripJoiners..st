applying
stripJoiners: aString

	^ aString reject: [:c | c asInteger = 16r200D]