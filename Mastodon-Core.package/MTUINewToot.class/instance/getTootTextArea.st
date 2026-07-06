render
getTootTextArea

	| wrapper |
	wrapper := MTUIView applyWrapperLayoutTo: (RectangleMorph new borderWidth: 1).
	
	wrapper addMorphBack: self tootTextArea.
	
	^ wrapper