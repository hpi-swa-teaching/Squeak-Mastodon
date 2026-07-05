layout
ownerChanged

	| postWidth |
	self owner ifNil: [^ self].
	self postMorph ifNil: [^ self].
	postWidth := self owner width - 80.
	postWidth := postWidth max: 0.
	{self postMorph. self accountMorph. self contentMorph. self dateMorph} do: [:morph | morph ifNotNil: [morph width: postWidth]]