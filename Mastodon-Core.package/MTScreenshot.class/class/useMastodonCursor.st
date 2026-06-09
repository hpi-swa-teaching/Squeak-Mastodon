actions
useMastodonCursor
	| morphUnderCursor textMorph |
	morphUnderCursor := self new getContentAtClick.
	morphUnderCursor allMorphs do: [:submorph |
		(submorph isKindOf: PluggableTextMorph) ifTrue: [
			"We primarily want to tweet code, so we need text that has syntax highlighting"
			submorph styler isNil
				ifTrue: [textMorph := submorph]
				ifFalse: [
					textMorph := submorph textMorph backgroundColor: Color white.
					textMorph exportAsPNGNamed: 'upload.png'.
					^ self]]].
	textMorph isNil
		ifTrue: [morphUnderCursor exportAsPNGNamed: 'upload.png']
		ifFalse: [
			textMorph := textMorph textMorph backgroundColor: Color white.
			textMorph exportAsPNGNamed: 'upload.png']
