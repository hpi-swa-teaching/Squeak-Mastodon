tests
testRenderWithoutImageDoesNotRaise

	| ui parent |
	MTImageCache default flush.
	MTImageCache default
		cacheValue: DataProvider mockAvatarForm
		forKey: (self avatarUrlFromJson: DataProvider defaultAccountJsonString).
	ui := MTUIToot new.
	ui object: (self tootFromJson: DataProvider defaultTootPlainJsonString).
	parent := Morph new.
	parent extent: 800 @ 600.
	parent addMorphBack: ui.
	self assertNoErrorDuring: [
		ui render.
		ui ownerChanged.
		ui layoutChanged]