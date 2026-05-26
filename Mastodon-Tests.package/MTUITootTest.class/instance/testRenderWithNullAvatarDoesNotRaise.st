tests
testRenderWithNullAvatarDoesNotRaise

	| ui parent |
	MTImageCache default flush.
	ui := MTUIToot new.
	ui toot: (self tootFromJson: DataProvider mockTootWithNullAvatar).
	parent := Morph new.
	parent extent: 800 @ 600.
	parent addMorphBack: ui.
	self assertNoErrorDuring: [
		ui render.
		ui ownerChanged.
		ui layoutChanged]