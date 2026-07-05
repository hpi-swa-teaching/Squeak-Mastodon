render
getNameField

	| wrapper |
	wrapper := (MTUIView applyWrapperLayoutTo: RectangleMorph new)
		hResizing: #rigid;
		width: self fieldWidth;
		yourself.
	
	wrapper addMorphBack: self nameText.
	
	^ wrapper