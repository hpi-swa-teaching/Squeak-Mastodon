as yet unclassified
addArchiveNavigationButton

	| button |
	button := MTUIArchiveTabButton new.
	
	button
		render;
		position: 120 @ 520;
		extent: 500 @ 60;
		target: self;
		actionSelector: #openArchiveView.
	
	self addMorph: button