render
render

	self accountMorph do: [:morph |
		self removeMorph: morph.
		morph delete].
	self accounts do: [:account | | accountMorph spacingMorph |
		accountMorph := MTUIAccount new for: account.
		
		self
			addProfileInteractionButtonsFor: account
			followButton: accountMorph followButton
			blockButton: accountMorph blockButton
			directTootButton: accountMorph directTootButton.
		
		spacingMorph := Morph new color: Color veryVeryLightGray.
		spacingMorph
			height: 1;
			hResizing: #spaceFill.
		self addMorphBack: accountMorph.
		self addAccountMorph: accountMorph.
		self addMorphBack: spacingMorph]