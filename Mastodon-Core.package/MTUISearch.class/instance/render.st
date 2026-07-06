render
render

	self accountMorph do: [:morph |
		self removeMorph: morph.
		morph delete].
	self accounts do: [:account | | accountUI spacingMorph relationship |
		accountUI := MTUIAccount for: account.
		relationship := (self mastodonApi getRelationship: account id) value at: 1.
		accountUI followButton
			target: self;
			actionSelector: #followAccountWithId:fromSender:;
			arguments: (Array with: account id with: accountUI followButton);
			active: relationship following.
		accountUI blockButton
			target: self;
			actionSelector: #blockAccountWithId:fromSender:;
			arguments: (Array with: account id with: accountUI blockButton);
			active: relationship blocking.
		accountUI directTootButton
			target: self;
			actionSelector: #directTootWithId:fromSender:;
			arguments: (Array with: account acct with: accountUI directTootButton);
			active: true.
		spacingMorph := Morph new color: Color veryVeryLightGray.
		spacingMorph
			height: 1;
			hResizing: #spaceFill.
		self addMorphBack: accountUI.
		self addAccountMorph: accountUI.
		self addMorphBack: spacingMorph]