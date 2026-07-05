views
loadView: aView as: aSymbol activate: aButton

	self loadedViews at: aSymbol put: aView.
	self menuMorph activeButton: aButton.
	self updateViewMorph: (self loadedViews at: aSymbol)