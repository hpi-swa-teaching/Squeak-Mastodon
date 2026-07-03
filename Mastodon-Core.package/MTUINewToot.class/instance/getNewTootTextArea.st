render
getNewTootTextArea

	| wrapper |
	wrapper := MTUIView applyWrapperLayoutTo: (RectangleMorph new borderWidth: 1).
	
	self tootTextArea: self getTextArea.
	wrapper addMorphBack: self tootTextArea.
	
	^ wrapper