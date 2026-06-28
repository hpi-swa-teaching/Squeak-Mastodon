views-helper
loadView: aView as: aSymbol activate: aButton

	self viewHistory: OrderedCollection new.
	menuMorph activeButton: aButton.
	self updateViewMorph: aView