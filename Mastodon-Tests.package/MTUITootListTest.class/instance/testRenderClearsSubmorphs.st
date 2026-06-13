tests
testRenderClearsSubmorphs

	| list parent toots first second third |
	
	MTImageCache default flush.
	MTImageCache default
		cache: DataProvider mockAvatarForm
		from: (self avatarUrlFromJson: DataProvider mockAccount).
	MTImageCache default
		cache: DataProvider mockPreviewForm
		from: (self previewUrlFromJson: DataProvider mockTootWithImage).

	parent := Morph new extent: 800 @ 600.
	list := MTUITootList new.
	parent addMorphBack: list.

	toots := OrderedCollection new.
	toots add: (self tootFromJson: DataProvider mockTootWithImage).
	toots add: (self tootFromJson: DataProvider mockTootWithoutImage).

	list setToots: toots.
	first := list submorphs size.

	list setToots: toots.
	second := list submorphs size.

	list setToots: toots.
	third := list submorphs size.

	self assert: first equals: second.
	self assert: second equals: third.