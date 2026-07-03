views-helpers
loadView: aView as: aSymbol activate: aButton

	self viewHistory: OrderedCollection new.
	self menuMorph activeButton: aButton.
	self updateViewMorph: aView