initialization
initializeVScrollBars

	(scrollBar := MTUIScrollBar on: self getValue: nil setValue: #vScrollBarValue:)
		menuSelector: #vScrollBarMenuButtonPressed:;
		orientation: #vertical;
		extent: 1 @ 1