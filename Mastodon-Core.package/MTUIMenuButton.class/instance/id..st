accessing
id: aSymbol

	id := aSymbol.
	self name: aSymbol asString.
	self setBalloonText: (self balloonTextForId: aSymbol)