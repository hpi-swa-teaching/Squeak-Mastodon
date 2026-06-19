render
renderRepostButtonOf: aTootMorph for: aToot

	aTootMorph reblogButton
		target: self;
		actionSelector: #repostTootWithId:fromSender:;
		arguments: (Array with: aToot id with: aTootMorph reblogButton);
		active: aToot reblogged