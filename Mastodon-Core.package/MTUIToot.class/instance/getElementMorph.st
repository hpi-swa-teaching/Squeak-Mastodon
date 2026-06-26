render
getElementMorph

	| container |
	self determineInteractionType.
	container := self getContainer.
	{
		self getAccountMorph.
		self getContentMorph.
		self getReblogMorph.
		self getMediaMorph.
		self getCreatedAtMorph.
		self getActionsMorph} do: [:each | each ifNotNil: [container addMorphBack: each]].
	
	^ container