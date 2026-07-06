render
getNoteField

	| wrapper |
	wrapper := (MTUIView applyWrapperLayoutTo: RectangleMorph new)
		hResizing: #rigid;
		width: self fieldWidth;
		yourself.
	
	wrapper addMorphBack: self noteText.
	
	^ wrapper