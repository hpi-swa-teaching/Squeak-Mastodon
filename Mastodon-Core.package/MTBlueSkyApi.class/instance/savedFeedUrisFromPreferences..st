helpers
savedFeedUrisFromPreferences: preferences

	| v2 old uris |
	uris := OrderedCollection new.
	v2 := preferences
		detect: [:pref | (pref at: '$type' ifAbsent: ['']) = 'app.bsky.actor.defs#savedFeedsPrefV2']
		ifNone: [nil].
	v2 ifNotNil: [
		(v2 at: 'items' ifAbsent: [#()]) do: [:item |
			(item at: 'type' ifAbsent: ['']) = 'feed' ifTrue: [
				uris add: (item
					at: 'value'
					ifAbsent: [''])]].
		^ uris].
	old := preferences
		detect: [:pref | (pref at: '$type' ifAbsent: ['']) = 'app.bsky.actor.defs#savedFeedsPref']
		ifNone: [nil].
	old ifNotNil: [
		(old at: 'pinned' ifAbsent: [#()]) do: [:uri | (uris includes: uri) ifFalse: [uris add: uri]].
		(old at: 'saved' ifAbsent: [#()]) do: [:uri | (uris includes: uri) ifFalse: [uris add: uri]]].
	^ uris