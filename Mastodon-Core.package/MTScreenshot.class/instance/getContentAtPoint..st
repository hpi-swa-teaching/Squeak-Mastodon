mouse-action
getContentAtPoint: aPoint 

	World submorphs
		do: [:submorph | (submorph containsPoint: aPoint)
				ifTrue: [^submorph]]

