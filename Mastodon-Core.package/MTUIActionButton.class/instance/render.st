render
render

	self
		height: self size;
		width: self size;
		borderWidth: 0;
		color: Color transparent.
	
	self active ifTrue: [self color: Color veryLightGray]