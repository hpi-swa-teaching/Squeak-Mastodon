initialization
replyTo: aToot

	^ self new
		inReplyToId: aToot id;
		updateContent: '@', aToot account federatedUsername, ' ';
		updateTitleMorphFor: aToot