render
removePreviousResults

	self accountMorphs do: [:each |
		self removeMorph: each.
		each delete]