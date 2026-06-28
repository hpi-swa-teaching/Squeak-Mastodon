render
getSpacingMorphAfter: aToot

	| separator |
	separator := super getSpacingMorphAfter: aToot.
	(self toots notEmpty and: [aToot id = self toots first id])
		ifTrue: [separator height: 4; color: Color lightGray].
	^ separator