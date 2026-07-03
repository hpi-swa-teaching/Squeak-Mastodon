helpers
savedFeedUrisFromPreferences: preferences

	| v2 old uris |
	uris := OrderedCollection new.
	v2 := preferences
		detect: [:pref | (pref at: '$type' ifAbsent: ['']) = 'app.bsky.actor.defs#savedFeedsPrefV2']
		ifNone: [nil].
	v2 ifNotNil: [
		^ (((v2 at: 'items' ifAbsent: [#()])
			select: [:item | (item at: 'type' ifAbsent: ['']) = 'feed'])
			collect: [:item | item at: 'value' ifAbsent: ['']]) asOrderedCollection].
	old := preferences
		detect: [:pref | (pref at: '$type' ifAbsent: ['']) = 'app.bsky.actor.defs#savedFeedsPref']
		ifNone: [nil].
	old ifNil: [^ uris].
	(old at: 'pinned' ifAbsent: [#()]) do: [:uri | (uris includes: uri) ifFalse: [uris add: uri]].
	(old at: 'saved' ifAbsent: [#()]) do: [:uri | (uris includes: uri) ifFalse: [uris add: uri]].
	^ uris