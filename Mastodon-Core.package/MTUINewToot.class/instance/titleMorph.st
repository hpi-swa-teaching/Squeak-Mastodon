accessing-morphs
titleMorph

	^ titleMorph ifNil: [
		titleMorph := self getTitleMorph.
		self updateTitleMorph.
		^ titleMorph]