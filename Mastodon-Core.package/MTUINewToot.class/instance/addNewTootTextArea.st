render
addNewTootTextArea

	| wrapper |
	wrapper := MTUIView applyWrapperLayoutTo: (RectangleMorph new borderWidth: 1).
	
	self tootTextArea: self getTextArea.
	
	wrapper addMorphBack: self tootTextArea.
	
	self addMorphBack: wrapper