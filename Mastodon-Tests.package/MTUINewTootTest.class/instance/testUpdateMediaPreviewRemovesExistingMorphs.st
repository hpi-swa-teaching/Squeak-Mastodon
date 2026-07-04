updating
testUpdateMediaPreviewRemovesExistingMorphs

	| newTootView oldMorph |
	newTootView := MTUINewToot new.
	oldMorph := Morph new.
	
	newTootView mediaPreview addMorphBack: oldMorph.
	newTootView
		media: {};
		updateMediaPreview.
		
	self deny: (newTootView mediaPreview submorphs includes: oldMorph).
	self assert: newTootView mediaPreview submorphs isEmpty