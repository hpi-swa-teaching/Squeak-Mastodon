render
testRender

	| form |
	form := Form extent: 400 @ 400 depth: 32.
	self shouldnt: (MTUIImageMorph new setNewImageFrom: form) raise: Error