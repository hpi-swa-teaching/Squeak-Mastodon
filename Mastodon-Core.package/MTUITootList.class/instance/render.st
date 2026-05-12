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
			(self mastodonApi isKindOf: MTBlueSkyApi) ifTrue: [
				tootMorph followButton render.
				tootMorph followButton
					target: self;
					actionSelector: #followUserForToot:fromSender:;
					arguments: (Array with: toot with: tootMorph followButton).
				tootMorph followButton active: toot followedByUser.
				tootMorph actionsMorph addMorphBack: tootMorph followButton].
			spacingMorph := Morph new color: Color veryVeryLightGray.
			spacingMorph 
				height: 1;
				hResizing: #spaceFill.
				
			self addMorphBack: tootMorph.
			self addTootMorph: tootMorph.
			self addMorphBack: spacingMorph
			].