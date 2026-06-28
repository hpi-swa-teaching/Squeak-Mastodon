render
getActionsMorph
	
	self actionsMorph: self getActionContainer.
	
	^ self actionsMorph
		addMorphBack: self replyButton render;
		addMorphBack: self repostButton render;
		addMorphBack: self starButton render;
		addMorphBack: self commentsButton render