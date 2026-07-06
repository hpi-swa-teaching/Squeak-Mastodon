render
addScrollMorph

	self
		addMorph: self scrollMorph
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) offsets: (70 @ 0 corner: 0 @ 0 negated)).
	
	self scrollMorph scroller
		color: Color white;
		borderWidth: 1