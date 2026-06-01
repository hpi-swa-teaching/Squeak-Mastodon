render
render

	| buttonHeight buttonWidth |
	buttonHeight := 24.
	buttonWidth := 24.
	
	self
		height: buttonHeight;
		width: buttonWidth;
		borderWidth: 0;
		color: Color transparent.
	
	self active ifTrue: [self color: Color veryLightGray]