tests
testRenderWithImageDoesNotRaise

	| ui parent |
	MTImageCache default flush.
	MTImageCache default
		cache: DataProvider mockAvatarForm
		from: (self avatarUrlFromJson: DataProvider mockAccount).
	MTImageCache default
		cache: DataProvider mockPreviewForm
		from: (self previewUrlFromJson: DataProvider mockTootWithImage).
	ui := MTUIToot new.
	ui toot: (self tootFromJson: DataProvider mockTootWithImage).
	parent := Morph new.
	parent extent: 800 @ 600.
	parent addMorphBack: ui.
	self assertNoErrorDuring: [
		ui render.
		ui ownerChanged.
		ui layoutChanged]