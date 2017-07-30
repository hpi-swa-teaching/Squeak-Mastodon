render
render
	self accountMorph
		do: [:morph | 
			self removeMorph: morph.
			morph delete].
	self accounts
		do: [:account | 
			| accountMorph spacingMorph relationship |
			accountMorph := MTUIAccount for: account.
			relationship := (self mastodonApi getRelationship: account id) value at: 1.
			accountMorph followButton target: self;
				 actionSelector: #followAccountWithId:fromSender:;
				
				arguments: (Array with: account id with: accountMorph followButton);
				 active: relationship following.
			accountMorph blockButton target: self;
				 actionSelector: #blockAccountWithId:fromSender:;
				
				arguments: (Array with: account id with: accountMorph blockButton);
				 active: relationship blocking.
			accountMorph directTootButton target: self;
				 actionSelector: #directTootWithId:fromSender:;
				
				arguments: (Array with: account acct with: accountMorph directTootButton);
				 active: true.
			spacingMorph := Morph new color: Color veryVeryLightGray.
			spacingMorph height: 1;
				 hResizing: #spaceFill.
			self addMorphBack: accountMorph.
			self addAccountMorph: accountMorph.
			self addMorphBack: spacingMorph]