tests
testRenderDoesNotRaise

	| thread toots |
	MTImageCache default flush.
	MTImageCache default
		cacheValue: DataProvider mockAvatarForm
		forKey: (self avatarUrlFromJson: DataProvider defaultAccountJsonString).

	toots := OrderedCollection new.
	toots add: ((self tootFromJson: DataProvider defaultTootPlainJsonString) id: '1'; yourself).
	toots add: ((self tootFromJson: DataProvider defaultTootPlainJsonString) id: '2'; inReplyToID: '1'; yourself).

	thread := MTUIThread new.
	thread rootToot: toots first.
	(Morph new extent: 800 @ 600) addMorphBack: thread.
	thread computeDepthsFor: toots.

	self assertNoErrorDuring: [thread setToots: toots]