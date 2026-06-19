render
render
	
	self removeAllMorphs.
	tootMorphs := OrderedCollection new. 
	
	self tootMorphs do: [:morph | self removeMorph: morph. morph delete].

	self toots
		do: [:toot | 
			| tootMorph spacingMorph |
			tootMorph := MTUIToot new for: toot.
			tootMorph repostButton
				target: self;
				actionSelector: #repostTootWithId:fromSender:;
				arguments: (Array with: (toot id) with: tootMorph repostButton);
				active: toot reblogged.
			tootMorph starButton
				target: self;
				actionSelector: #favoriteTootWithId:fromSender:;
				arguments: (Array with: (toot id) with: tootMorph starButton).
			tootMorph starButton active: toot favourited.
			tootMorph commentsButton
				target: self;
				actionSelector: #showThreadFor:;
				arguments: (Array with: toot).
			spacingMorph := Morph new color: Color veryVeryLightGray.
			spacingMorph 
				height: 1;
				hResizing: #spaceFill.
				
			self addMorphBack: tootMorph.
			self addTootMorph: tootMorph.
			self addMorphBack: spacingMorph
			].
