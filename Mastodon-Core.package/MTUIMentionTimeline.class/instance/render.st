render
render
	"render with ArchiveButton"
	self tootMorphs do: [:morph | self removeMorph: morph. morph delete].
	
	self toots
		do: [:toot | 
			| tootMorph spacingMorph |
			tootMorph := MTUIToot for: toot.
			tootMorph showArchiveButton: true.
			
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
			tootMorph replyButton
				target: self;
				actionSelector: #replyToToot:;
				arguments: (Array with: toot).
			tootMorph archiveButton
			target:self;
			actionSelector: #archiveTootWithId:;
			arguments:(Array with: (toot id)).
			
			spacingMorph := Morph new color: Color veryVeryLightGray.
			spacingMorph 
				height: 1;
				hResizing: #spaceFill.
				
			self addMorphBack: tootMorph.
			self addTootMorph: tootMorph.
			self addMorphBack: spacingMorph
			].