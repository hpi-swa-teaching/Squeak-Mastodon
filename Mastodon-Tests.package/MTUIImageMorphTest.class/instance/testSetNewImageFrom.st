actions
testSetNewImageFrom

	| form image |
	form := Form extent: 400 @ 400 depth: 32.
	
	self shouldnt: (image := MTUIImageMorph new setNewImageFrom: form) raise: Error