as yet unclassified
addScrollMorph
	self
		addMorph: scrollMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (70 @ 0 corner: 0 @ 0 negated)).
				
	scrollMorph scroller color: Color white.
	scrollMorph scroller borderWidth: 1.
	


	