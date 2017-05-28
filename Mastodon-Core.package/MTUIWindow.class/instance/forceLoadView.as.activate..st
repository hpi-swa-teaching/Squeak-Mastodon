as yet unclassified
forceLoadView: aView as: aSymbol activate: aButton 

	loadedViews at: aSymbol put: (aView).
	menuMorph activeButton: aButton.
	self updateViewMorph: (loadedViews at: aSymbol).