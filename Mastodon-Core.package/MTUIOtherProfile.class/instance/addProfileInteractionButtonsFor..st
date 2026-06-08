render
addProfileInteractionButtonsFor: anAccount

	| actionsMorph followButton blockButton directTootButton relationship |
	relationship := (self mastodonApi getRelationship: anAccount id) value at: 1.
	followButton := MTUIFollowButton new.
	followButton
		target: self;
		actionSelector: #followAccountWithId:fromSender:;
		arguments: (Array with: anAccount id with: followButton);
		active: relationship following.
	blockButton := MTUIMuteButton new.
	blockButton
		target: self;
		actionSelector: #blockAccountWithId:fromSender:;
		arguments: (Array with: anAccount id with: blockButton);
		active: relationship blocking.
	
	directTootButton := MTUIDirectTootButton new.
	directTootButton
		target: self;
		actionSelector: #directTootWithId:fromSender:;
		arguments: (Array with: anAccount acct with: directTootButton);
		active: true.
	
	actionsMorph := Morph new.
	actionsMorph
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 1;
		wrapCentering: #center;
		listCentering: #center;
		color: Color transparent;
		addMorphBack: followButton render;
		addMorphBack: blockButton render;
		addMorphBack: directTootButton render.
	
	^ actionsMorph