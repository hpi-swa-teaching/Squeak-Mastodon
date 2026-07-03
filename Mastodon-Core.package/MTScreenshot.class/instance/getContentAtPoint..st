mouse-action
getContentAtPoint: aPoint

	^ World submorphs detect: [:submorph | submorph containsPoint: aPoint] ifNone: [nil]