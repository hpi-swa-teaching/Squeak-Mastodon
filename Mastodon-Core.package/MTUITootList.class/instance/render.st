render
render

	self tootMorphs do: [:morph | morph delete].
	self removeAllMorphs.
	self toots do: [:toot | | tootMorph spacingMorph actionToot |
		tootMorph := MTUIToot for: toot.
		actionToot := toot reblogOrSelf.
		(self mastodonApi isKindOf: MTBlueSkyApi)
			ifTrue: [
				tootMorph repostButton
					target: self;
					actionSelector: #repostBlueskyToot:fromSender:;
					arguments: (Array with: toot with: tootMorph repostButton);
					active: toot reblogged]
			ifFalse: [
				tootMorph repostButton
					target: self;
					actionSelector: #repostTootWithId:fromSender:;
					arguments: (Array with: actionToot id with: tootMorph repostButton);
					active: actionToot reblogged].
		tootMorph heartButton
			target: self;
			actionSelector: #favoriteTootWithId:fromSender:;
			arguments: (Array with: actionToot id with: tootMorph heartButton).
		tootMorph heartButton active: actionToot favourited.
		(self mastodonApi isKindOf: MTBlueSkyApi) ifTrue: [
			tootMorph followButton render.
			tootMorph followButton
				target: self;
				actionSelector: #followUserForToot:fromSender:;
				arguments: (Array with: toot with: tootMorph followButton).
			tootMorph followButton active: toot followedByUser.
			tootMorph accountMorph addMorphBack: tootMorph followButton.
			tootMorph profileButton render.
			tootMorph profileButton
				target: self;
				actionSelector: #openProfileForToot:;
				arguments: (Array with: toot).
			tootMorph accountMorph addMorphBack: tootMorph profileButton].
		spacingMorph := Morph new color: Color veryVeryLightGray.
		spacingMorph
			height: 1;
			hResizing: #spaceFill.
		
		self addMorphBack: tootMorph.
		self addTootMorph: tootMorph.
		self addMorphBack: spacingMorph]