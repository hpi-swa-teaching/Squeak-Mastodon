helpers
savedFeedItemsFromPreferences: preferences
	| v2 old items |
	items := OrderedCollection new.
	v2 := preferences
		detect: [:pref | (pref at: '$type' ifAbsent: ['']) = 'app.bsky.actor.defs#savedFeedsPrefV2']
		ifNone: [nil].
	v2 ifNotNil: [
		(v2 at: 'items' ifAbsent: [#()]) do: [:item | items add: item].
		^ items].
	old := preferences
		detect: [:pref | (pref at: '$type' ifAbsent: ['']) = 'app.bsky.actor.defs#savedFeedsPref']
		ifNone: [nil].
	old ifNotNil: [
		(old at: 'pinned' ifAbsent: [#()]) do: [:uri |
			items add: (Dictionary new
				at: 'id' put: uri;
				at: 'type' put: 'feed';
				at: 'value' put: uri;
				at: 'pinned' put: true;
				yourself)].
		(old at: 'saved' ifAbsent: [#()]) do: [:uri |
			(items detect: [:item | (item at: 'value' ifAbsent: ['']) = uri] ifNone: [nil])
				ifNil: [items add: (Dictionary new
					at: 'id' put: uri;
					at: 'type' put: 'feed';
					at: 'value' put: uri;
					at: 'pinned' put: false;
					yourself)]]].
	^ items
