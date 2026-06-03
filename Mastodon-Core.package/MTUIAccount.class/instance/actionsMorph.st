render
actionsMorph

	| actionsMorph |
	self followButton: MTUIFollowButton new.
	self blockButton: MTUIMuteButton new.
	self directTootButton: MTUIDirectTootButton new.
	actionsMorph := Morph new.
	actionsMorph
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 1;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: self followButton render;
		addMorphBack: self blockButton render;
		addMorphBack: self directTootButton render.
	
	^ actionsMorph