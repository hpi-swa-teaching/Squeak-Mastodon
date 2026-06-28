render
getActionsMorph
	
	self actionsMorph: self getActionContainer.
	
	^ self actionsMorph
		addMorphBack: self repostButton render;
		addMorphBack: self starButton render