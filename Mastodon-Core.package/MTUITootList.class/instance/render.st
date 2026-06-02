render
render

	self tootMorphs do: [:morph |
		self removeMorph: morph.
		morph delete].
	
	self toots do: [:toot | | tootMorph spacingMorph |
		tootMorph := MTUIToot for: toot.
		self renderRepostButtonOf: tootMorph for: toot.
		self renderHeartButtonOf: tootMorph for: toot.
		spacingMorph := Morph new color: Color veryVeryLightGray.
		spacingMorph
			height: 1;
			hResizing: #spaceFill.
		
		self addMorphBack: tootMorph.
		self addTootMorph: tootMorph.
		self addMorphBack: spacingMorph]