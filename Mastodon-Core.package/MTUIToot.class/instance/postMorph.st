render
postMorph

	| reblogMorph post |
	post := super postMorph.
	
	reblogMorph := self reblogMorph.
	reblogMorph ifNotNil: [post addMorphBack: reblogMorph].
	
	^ post