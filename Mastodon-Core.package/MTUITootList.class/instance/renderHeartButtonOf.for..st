render
renderHeartButtonOf: aTootMorph for: aToot

	aTootMorph heartButton
		target: self;
		actionSelector: #favoriteTootWithId:fromSender:;
		arguments: (Array with: aToot id with: aTootMorph heartButton).
	aTootMorph heartButton active: aToot favourited