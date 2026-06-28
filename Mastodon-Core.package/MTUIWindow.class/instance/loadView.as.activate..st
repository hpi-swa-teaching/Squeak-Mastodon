views-helper
loadView: aView as: aSymbol activate: aButton

	self menuMorph activeButton: aButton.
	
	self updateViewMorph: aView