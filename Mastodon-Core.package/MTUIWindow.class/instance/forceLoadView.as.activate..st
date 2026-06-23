views
forceLoadView: aView as: aSymbol activate: aButton

	self viewHistory: OrderedCollection new.
	self loadedViews at: aSymbol put: aView.
	self menuMorph activeButton: aButton.
	self updateViewMorph: (self loadedViews at: aSymbol)