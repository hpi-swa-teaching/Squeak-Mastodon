render
addProfileInteractionButtonsFor: anAccount followButton: aFollowButton blockButton: aBlockButton directTootButton: aDirectTootButton

	| relationship |
	relationship := (self mastodonApi getRelationship: anAccount id) value at: 1.
	
	aFollowButton
		target: self;
		actionSelector: #followAccountWithId:fromSender:;
		arguments: (Array with: anAccount id with: aFollowButton);
		active: relationship following.
	
	aBlockButton
		target: self;
		actionSelector: #blockAccountWithId:fromSender:;
		arguments: (Array with: anAccount id with: aBlockButton);
		active: relationship blocking.
	
	aDirectTootButton
		target: self;
		actionSelector: #directTootWithId:fromSender:;
		arguments: (Array with: anAccount federatedUsername with: aDirectTootButton);
		active: true