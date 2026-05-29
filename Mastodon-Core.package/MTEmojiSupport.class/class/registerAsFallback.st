as yet unclassified
registerAsFallback

	| emojiStyle |
	emojiStyle := TextConstants at: #NotoEmoji ifAbsent: [^ self].
	[TextStyle default fontArray do: [:defaultFont |
		| emojiFont |
		emojiFont := emojiStyle fontOfSize: defaultFont pointSize.
		(defaultFont isKindOf: StrikeFontSet) ifTrue: [
			(emojiFont isKindOf: StrikeFontSet) ifTrue: [
				emojiFont fontArray doWithIndex: [:pageFont :pageIdx |
					pageFont ifNotNil: [
						(pageIdx <= defaultFont fontArray size and: [
							(defaultFont fontArray at: pageIdx) isNil])
								ifTrue: [defaultFont fontArray at: pageIdx put: pageFont]]]]]]]
	on: Error do: []