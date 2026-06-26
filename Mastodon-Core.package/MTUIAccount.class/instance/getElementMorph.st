render
getElementMorph

	| container |
	container := self getContainer.
	{self getAccountMorph. self getNoteMorph. self getCreatedAtMorph. self getActionsMorph} do: [:each | each ifNotNil: [container addMorphBack: each]].
	
	^ container