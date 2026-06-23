views
loadView: aView as: aSymbol activate: aButton

	self viewHistory: OrderedCollection new.
	loadedViews at: aSymbol put: aView.
	menuMorph activeButton: aButton.
	self updateViewMorph: (loadedViews at: aSymbol)