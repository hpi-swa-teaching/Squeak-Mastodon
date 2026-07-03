morphic
addButton: anId for: anAction on: aTarget with: anImage

	| button |
	button := MTUIMenuButton new
		target: aTarget;
		id: anId;
		labelGraphic: anImage;
		actionSelector: anAction.
	
	self buttons add: button