render-buttons
testGetInteractionButtonsContainsButtons

	| profileView interactionButtons |
	profileView := self getProfileViewForSecondAccount.
	
	interactionButtons := profileView getInteractionButtons.
	
	self assert: (interactionButtons submorphs includes: profileView followButton).
	self assert: (interactionButtons submorphs includes: profileView blockButton).
	self assert: (interactionButtons submorphs includes: profileView directTootButton).
	
	self assert: interactionButtons submorphs size equals: 3