as yet unclassified
getContentAtPoint: aPoint 

	World submorphs
		do: [:submorph | (submorph containsPoint: aPoint)
				ifTrue: [^submorph]]

