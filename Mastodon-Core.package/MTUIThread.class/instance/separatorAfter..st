render
separatorAfter: aToot

	| separator |
	separator := super separatorAfter: aToot.
	(self toots notEmpty and: [aToot id = self toots first id])
		ifTrue: [separator height: 4; color: Color lightGray].
	^ separator