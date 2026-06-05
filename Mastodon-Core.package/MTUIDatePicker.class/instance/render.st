render
render

	| container |
	self removeAllMorphs.
	container := AlignmentMorph newRow.
	
	container
		addMorphBack: yearField;
		addMorphBack: monthField;
		addMorphBack: dayField;
		addMorphBack: hourField;
		addMorphBack: minuteField;
		color: Color transparent;
		hResizing: #spaceFill.
	self addMorphBack: container