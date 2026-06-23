views
loadThreadViewOf: aToot

	| thread |
	self mastodonApi hasToken ifFalse: [^ false].

	thread := MTUIThread new.
	thread rootToot: aToot.
	thread loadThread ifFalse: [^ false].

	self viewMorph ifNil: [^ self].
	self viewHistory addLast: (self viewMorph -> self scrollMorph scroller offset copy).

	loadedViews at: #threadView put: thread.
	self updateViewMorph: thread.
	self scrollMorph scroller offset: 0 @ 0.
	self scrollMorph setScrollDeltas.
	self layoutChanged