as yet unclassified
addButton: anId for: anAction on: aTarget with: anImage
	| button |
	button := MTUIMenuButton new.
	button 
		target: aTarget;
		id: anId;
		labelGraphic: anImage;
		actionSelector: anAction.
	
	buttons add: button.