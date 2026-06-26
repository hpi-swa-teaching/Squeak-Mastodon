render
render

	self removeAllMorphs.
	
	self tootMorphs do: [:morph |
		self removeMorph: morph.
		morph delete].
	
	self toots do: [:toot |
		self
			addTootMorph: (MTUIToot for: toot);
			addMorphBack: self getSpacingMorph]