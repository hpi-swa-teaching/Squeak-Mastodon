accessing
tootCharacterLimit

	^ (self mastodonApi isKindOf: MTBlueSkyApi) ifTrue: [300] ifFalse: [500]