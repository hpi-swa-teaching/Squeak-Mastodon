render
getTextColor: anAccount

	| following |
	following := (self mastodonApi getRelationship: anAccount id) following.
	following ifTrue: [^ Color r: 0.5 g: 0.0 b: 0.5] ifFalse: [^ Color r: 0.15 g: 0.55 b: 0.83]