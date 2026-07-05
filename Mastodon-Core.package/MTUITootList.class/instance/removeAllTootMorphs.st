render
removeAllTootMorphs

	self tootMorphs do: [:morph |
		self removeMorph: morph.
		morph delete]