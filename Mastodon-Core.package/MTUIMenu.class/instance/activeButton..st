as yet unclassified
activeButton: aButtonId
	self submorphs do: [ :button |
		button id = aButtonId 
		ifTrue: [
			button active: true ] 
		ifFalse: [
			button active: false ].
		button render].
	