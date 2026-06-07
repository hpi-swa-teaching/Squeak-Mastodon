tests
testRenderWithoutImageDoesNotRaise

	| ui parent |
	MTImageCache default flush.
	MTImageCache default
		cache: DataProvider mockAvatarForm
		from: (self avatarUrlFromJson: DataProvider defaultAccountJsonString).
	ui := MTUIToot new.
	ui toot: (self tootFromJson: DataProvider defaultTootPlainJsonString).
	parent := Morph new.
	parent extent: 800 @ 600.
	parent addMorphBack: ui.
	self assertNoErrorDuring: [
		ui render.
		ui ownerChanged.
		ui layoutChanged]