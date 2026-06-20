render
addContents

	self container: (MTUIView new
		cellInset: 10;
		layoutInset: 10).
	self contents do: [:morph | self container addMorphBack: morph].
	self addMorphBack: self container