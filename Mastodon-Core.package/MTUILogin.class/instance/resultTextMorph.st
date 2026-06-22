accessing
resultTextMorph

	^ resultTextMorph ifNil: [resultTextMorph := TextMorph new contents: 'test']