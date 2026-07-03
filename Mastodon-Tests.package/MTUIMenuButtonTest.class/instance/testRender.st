render
testRender
	
	| morph |
	morph := MTUIMenuButton new
		target: self;
		id: #aButtonID;
		actionSelector: #update;
		labelGraphic: MTUIIcons home.
		
	self shouldnt: [morph render] raise: Error