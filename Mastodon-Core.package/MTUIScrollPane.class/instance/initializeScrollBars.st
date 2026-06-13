initialization
initializeScrollBars
	"Initialize vertical and horizontal scroll bars."

	self initializeHScrollBars.
	self initializeVScrollBars.
	self initializeScroller.
	self addMorph: scroller.
	
	"scrollBar initializeEmbedded: retractableScrollBar not."
	"hScrollBar initializeEmbedded: retractableScrollBar not."
	retractableScrollBar ifFalse: [
		self
			addMorph: scrollBar;
			addMorph: hScrollBar].
	self updateMinimumExtent