render
addScrollMorph

	self
		addMorph: self scrollMorph
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) offsets: (self menuWidth @ 0 corner: 0 @ 0 negated)).
	
	self scrollMorph scroller color: Color white.
	self scrollMorph scroller borderWidth: 1