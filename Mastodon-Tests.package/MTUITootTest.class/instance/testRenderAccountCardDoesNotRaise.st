rendering
testRenderAccountCardDoesNotRaise

	| account ui parent |
	MTImageCache default flush.
	MTImageCache default cache: DataProvider mockAvatarForm from: 'https://example.invalid/avatar.png'.
	account := self sampleAccount.
	parent := Morph new.
	parent extent: 800 @ 600.
	ui := MTUIAccount for: account socialProvider: MTMastodonApi new.
	parent addMorphBack: ui.
	ui ownerChanged.
	ui layoutChanged.
	
	self assert: ui account equals: account.
	self assert: ui socialProvider class equals: MTMastodonApi.
	self assert: ui profileLinkMorph class equals: MTUIProfileLinkMorph.
	self assert: ui actionsMorph submorphs size equals: 3