tests
testRenderWithImageDoesNotRaise

	| ui parent |
	MTImageCache default flush.
	MTImageCache default
		cacheValue: DataProvider mockAvatarForm
		forKey: (self avatarUrlFromJson: DataProvider defaultAccountJsonString).
	MTImageCache default
		cacheValue: DataProvider mockPreviewForm
		forKey: (self previewUrlFromJson: DataProvider defaultTootWithImageJsonString).
	ui := MTUIToot new.
	ui object: (self tootFromJson: DataProvider defaultTootWithImageJsonString).
	parent := Morph new.
	parent extent: 800 @ 600.
	parent addMorphBack: ui.
	self assertNoErrorDuring: [
		ui render.
		ui ownerChanged.
		ui layoutChanged]