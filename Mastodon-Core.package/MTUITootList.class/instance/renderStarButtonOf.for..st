render
renderStarButtonOf: aTootMorph for: aToot

	aTootMorph starButton
		target: self;
		actionSelector: #favoriteTootWithId:fromSender:;
		arguments: (Array with: aToot id with: aTootMorph starButton).
	aTootMorph starButton active: aToot favourited