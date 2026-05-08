as yet unclassified
renderMention

	self mentionMorphs do: [:morph |
		self removeMorph: morph.
		morph delete].
	
	self mentionMorphs: OrderedCollection new.
	
	self mention do: [:mention |
		mention status ifNotNil: [
			| textMorph spacingMorph |
			textMorph := TextMorph new.
			
			textMorph contentsWrapped: (MTUtils asTextFromHtml: ('<b>@', mention account username, '</b><br>', mention status content,'<br>', (MTUtils relativeTimeString: (MTUtils timestampFromString: mention status createdAt)))).
			
			textMorph
				width: 400;
				lock.
			
			spacingMorph := Morph new color: Color veryVeryLightGray.
			
			spacingMorph
				height: 1;
				hResizing: #spaceFill.
			
			self addMorphBack: textMorph.
			self addMentionMorph: textMorph.
			
			self addMorphBack: spacingMorph]]