render
getElementMorph

	| container |
	container := self getContainer.
	{
		self getAccountMorph.
		self getContentMorph.
		self getReblogMorph.
		self getMediaMorph.
		self getCreatedAtMorph.
		self getActionsMorph} do: [:each | each ifNotNil: [container addMorphBack: each]].
	
	^ container