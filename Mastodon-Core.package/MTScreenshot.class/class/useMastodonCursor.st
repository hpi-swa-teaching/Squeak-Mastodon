actions
useMastodonCursor
	| morphUnderCursor textMorph |
	morphUnderCursor := self new getContentAtClick.
	morphUnderCursor allMorphs
		do: [:submorph | (submorph isKindOf: PluggableTextMorph)
				ifTrue: [
					"We primarily want to tweet code, so we need text that has syntax highlighting"
					(submorph styler isNil)
						ifTrue: [textMorph := submorph]
						ifFalse: ["self openImageTweetWindowFor: submorph." 
								textMorph := submorph.
								textMorph := textMorph textMorph backgroundColor: Color white.
								textMorph exportAsPNGNamed: 'upload.png'.
								
								"TODO: open new tweet with iamge window"
								
								
								^ self]]].
	textMorph isNil
		ifTrue: [	"self openImageTweetWindowFor: morphUnderCursor" 
				morphUnderCursor exportAsPNGNamed: 'upload.png'.
				
				
				"TODO: open new tweet with iamge window"
				
				
				]
		"If there are no textMorph with syntax hightlighting, take the last one found"
		ifFalse: ["self openImageTweetWindowFor: textMorph" 
				textMorph := textMorph textMorph backgroundColor: Color white.
				textMorph exportAsPNGNamed: 'upload.png'.
				
				"TODO: open new tweet with iamge window"
				
				]
