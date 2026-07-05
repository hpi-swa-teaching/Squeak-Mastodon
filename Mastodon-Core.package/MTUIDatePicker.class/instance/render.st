render
render

	| container |
	self removeAllMorphs.
	container := AlignmentMorph newRow.
	
	container
		addMorphBack: self yearField;
		addMorphBack: self monthField;
		addMorphBack: self dayField;
		addMorphBack: self hourField;
		addMorphBack: self minuteField;
		color: Color transparent;
		hResizing: #spaceFill.
	self addMorphBack: container