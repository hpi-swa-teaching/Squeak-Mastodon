initialization
initializeScrollBars

	(scrollBar := MTUIScrollBar on: self getValue: nil setValue: #vScrollBarValue:)
		menuSelector: #vScrollBarMenuButtonPressed:;
		orientation: #vertical;
		extent: 1 @ 1.
	(hScrollBar := ScrollBar on: self getValue: nil setValue: #hScrollBarValue:)
		menuSelector: #hScrollBarMenuButtonPressed:;
		orientation: #horizontal;
		extent: 1 @ 1.
	
	scroller := TransformMorph new
		color: Color transparent;
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	
	scroller offset: 0 @ 0.
	self addMorph: scroller.
	
	retractableScrollBar ifFalse: [
		self
			addMorph: scrollBar;
			addMorph: hScrollBar].
	self updateMinimumExtent