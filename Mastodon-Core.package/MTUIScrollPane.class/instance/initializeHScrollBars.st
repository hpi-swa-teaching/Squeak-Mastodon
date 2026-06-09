initialization
initializeHScrollBars

	(hScrollBar := ScrollBar on: self getValue: nil setValue: #hScrollBarValue:)
		menuSelector: #hScrollBarMenuButtonPressed:;
		orientation: #horizontal;
		extent: 1 @ 1