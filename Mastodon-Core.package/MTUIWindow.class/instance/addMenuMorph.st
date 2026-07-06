render
addMenuMorph

	self
		addMorph: self menuMorph
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0 @ 1) offsets: (0 @ 0 corner: 70 @ 0 negated)).
	self menuMorph color: Color transparent.
	self addMenuButtons.
	self menuMorph drawButtons