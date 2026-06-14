tests
testRenderClearsSubmorphs

	| list parent toots first second third |
	
	MTImageCache default flush.
	MTImageCache default
		cacheValue: DataProvider mockAvatarForm
		forKey: (self avatarUrlFromJson: DataProvider defaultAccountJsonString).
	MTImageCache default
		cacheValue: DataProvider mockPreviewForm
		forKey: (self previewUrlFromJson: DataProvider defaultTootWithImageJsonString).

	parent := Morph new extent: 800 @ 600.
	list := MTUITootList new.
	parent addMorphBack: list.

	toots := OrderedCollection new.
	toots add: (self tootFromJson: DataProvider defaultTootWithImageJsonString).
	toots add: (self tootFromJson: DataProvider defaultTootPlainJsonString).

	list setToots: toots.
	first := list submorphs size.

	list setToots: toots.
	second := list submorphs size.

	list setToots: toots.
	third := list submorphs size.

	self assert: first equals: second.
	self assert: second equals: third.