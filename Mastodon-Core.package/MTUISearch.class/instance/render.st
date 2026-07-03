render
render

	self accountMorph do: [:morph |
		self removeMorph: morph.
		morph delete].
	self accounts do: [:account | | card spacingMorph relationship |
		card := MTUIAccount for: account socialProvider: self socialProvider.
		(self socialProvider isKindOf: MTBlueSkyApi)
			ifTrue: [
				card followButton render.
				card followButton
					target: self;
					actionSelector: #followUserForAccount:fromSender:;
					arguments: (Array with: account with: card followButton);
					active: account followUri notEmpty.
				card headerMorph addMorphBack: card followButton.
				card profileLinkMorph
					target: self;
					actionSelector: #openProfileForAccount:;
					arguments: (Array with: account).
				card avatarMorph ifNotNil: [
					card avatarMorph
						target: self;
						actionSelector: #openProfileForAccount:;
						arguments: (Array with: account)]]
			ifFalse: [
				relationship := (self socialProvider getRelationship: account id) value first.
				card contentMorph addMorphBack: card actionsMorph.
				card followButton
					target: self;
					actionSelector: #followAccountWithId:fromSender:;
					arguments: (Array with: account id with: card followButton);
					active: relationship following.
				card blockButton
					target: self;
					actionSelector: #blockAccountWithId:fromSender:;
					arguments: (Array with: account id with: card blockButton);
					active: relationship blocking.
				card directTootButton
					target: self;
					actionSelector: #directTootWithId:fromSender:;
					arguments: (Array with: account acct with: card directTootButton);
					active: true].
		spacingMorph := Morph new color: Color veryVeryLightGray.
		spacingMorph
			height: 1;
			hResizing: #spaceFill.
		self addMorphBack: card.
		self addAccountMorph: card.
		self addMorphBack: spacingMorph]