render
addInteractionButtonsFor: anAccount

	| actionsMorph followButton blockButton directTootButton |
	followButton := MTUIFollowButton new.
	blockButton := MTUIMuteButton new.
	directTootButton := MTUIDirectTootButton new.
	
	self
		addProfileInteractionButtonsFor: anAccount
		followButton: followButton
		blockButton: blockButton
		directTootButton: directTootButton.
	
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