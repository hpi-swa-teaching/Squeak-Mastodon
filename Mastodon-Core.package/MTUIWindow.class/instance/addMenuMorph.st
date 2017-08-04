render
addMenuMorph
	self
		addMorph: menuMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 1)
				offsets: (0 @ 0 corner: 70 @ 0 negated)).
	menuMorph color: Color transparent.
	self addMenuButtons.
	menuMorph drawButtons.