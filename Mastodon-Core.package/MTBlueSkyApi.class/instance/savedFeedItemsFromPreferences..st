helpers
savedFeedItemsFromPreferences: preferences

	| v2 old items |
	items := OrderedCollection new.
	v2 := preferences
		detect: [:pref | (pref at: '$type' ifAbsent: ['']) = 'app.bsky.actor.defs#savedFeedsPrefV2']
		ifNone: [nil].
	v2 ifNotNil: [^ (v2 at: 'items' ifAbsent: [#()]) asOrderedCollection].
	old := preferences
		detect: [:pref | (pref at: '$type' ifAbsent: ['']) = 'app.bsky.actor.defs#savedFeedsPref']
		ifNone: [nil].
	old ifNil: [^ items].
	items addAll: ((old at: 'pinned' ifAbsent: [#()])
		collect: [:uri | self savedFeedItemForUri: uri pinned: true]).
	(old at: 'saved' ifAbsent: [#()]) do: [:uri |
		(items anySatisfy: [:item | (item at: 'value' ifAbsent: ['']) = uri])
			ifFalse: [items add: (self savedFeedItemForUri: uri pinned: false)]].
	^ items