tests
testRenderWithImageDoesNotRaise

	| ui parent |
	MTImageCache default flush.
	MTImageCache default
		cache: DataProvider mockAvatarForm
		from: (self avatarUrlFromJson: DataProvider defaultAccountJson).
	MTImageCache default
		cache: DataProvider mockPreviewForm
		from: (self previewUrlFromJson: DataProvider defaultTootWithImageJson).
	ui := MTUIToot new.
	ui toot: (self tootFromJson: DataProvider defaultTootWithImageJson).
	parent := Morph new.
	parent extent: 800 @ 600.
	parent addMorphBack: ui.
	self assertNoErrorDuring: [
		ui render.
		ui ownerChanged.
		ui layoutChanged]