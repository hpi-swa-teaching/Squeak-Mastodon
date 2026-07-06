actions
refreshAccountMorphs

	self removePreviousResults.
	
	self accounts do: [:account | | container |
		container := self getContainer.
		container
			addMorphBack: (MTUIAccount for: account);
			addMorphBack: self getSpacingMorph.
		self addAccountMorph: container]