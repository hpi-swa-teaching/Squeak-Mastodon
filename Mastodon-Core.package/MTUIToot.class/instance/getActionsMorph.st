render
getActionsMorph
	
	self actionsMorph: self getActionContainer.
	
	^ self actionsMorph
		addMorphBack: self replyButton render;
		addMorphBack: self reblogButton render;
		addMorphBack: self starButton render;
		addMorphBack: self commentsButton render