render
renderRepostButtonOf: aTootMorph for: aToot

	aTootMorph repostButton
		target: self;
		actionSelector: #repostTootWithId:fromSender:;
		arguments: (Array with: aToot id with: aTootMorph repostButton);
		active: aToot reblogged