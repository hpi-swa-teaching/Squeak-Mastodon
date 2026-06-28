render
getInteractionButtons

	^ self getActionContainer
		addMorphBack: self getFollowButton render;
		addMorphBack: self getBlockButton render;
		addMorphBack: self getDirectTootButton render