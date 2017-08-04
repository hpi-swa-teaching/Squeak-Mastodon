render
render
	
	self tootMorphs do: [:morph | self removeMorph: morph. morph delete].

	self toots
		do: [:toot | 
			| tootMorph spacingMorph |
			tootMorph := MTUIToot for: toot.
			tootMorph repostButton
				target: self;
				actionSelector: #repostTootWithId:fromSender:;
				arguments: (Array with: (toot id) with: tootMorph repostButton);
				active: toot reblogged.
			tootMorph heartButton
				target: self;
				actionSelector: #favoriteTootWithId:fromSender:;
				arguments: (Array with: (toot id) with: tootMorph heartButton).
			tootMorph heartButton active: toot favourited.
			spacingMorph := Morph new color: Color veryVeryLightGray.
			spacingMorph 
				height: 1;
				hResizing: #spaceFill.
				
			self addMorphBack: tootMorph.
			self addTootMorph: tootMorph.
			self addMorphBack: spacingMorph
			].