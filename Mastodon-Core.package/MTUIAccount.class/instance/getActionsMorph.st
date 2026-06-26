render
getActionsMorph

	^ self getActionContainer
		addMorphBack: self followButton render;
		addMorphBack: self blockButton render;
		addMorphBack: self directTootButton render;
		yourself