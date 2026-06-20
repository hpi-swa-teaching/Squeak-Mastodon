render
getActionsMorph

|following|
	self repostButton: MTUIRepostButton new.
	self starButton: MTUIStarButton new.
	self followButton: MTUIFollowButton new.
	
	following := ((MTMastodonApi getInstance getRelationship: self object account id) value at: 1) following.
	followButton
		target: self;
		actionSelector: #followAccountWithId:fromSender:;
		arguments: (Array with: self object account id with: followButton);
		active: following.
		
	Transcript show: following; cr.

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
		addMorphBack: self repostButton render;
		addMorphBack: self starButton render;
		addMorphBack: self followButton render.
	
	^ actionsMorph