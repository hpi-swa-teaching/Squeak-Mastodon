render
addViewMorph

	self scrollMorph scroller addMorph: self viewMorph.
	
	self scrollMorph
		resizeScrollBars;
		resizeScroller;
		setScrollDeltas