render
addAllToots

	self toots do: [:toot |
		self
			addTootMorph: (MTUIToot for: toot);
			addMorphBack: (self getSpacingMorphAfter: toot)]