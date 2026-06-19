views
loadThreadViewOf: aToot

	| thread |
	self mastodonApi hasToken ifFalse: [^ false].

	thread := MTUIThread new.
	thread mastodonApi: self mastodonApi.
	thread rootToot: aToot.
	thread loadReplies ifFalse: [^ false].

	(self viewMorph isKindOf: MTUIThread) ifFalse: [
		previousViewMorph := self viewMorph.
		previousScrollOffset := self scrollMorph scroller offset copy].

	loadedViews at: #threadView put: thread.
	self updateViewMorph: thread.
	self scrollMorph scroller offset: 0 @ 0.
	self scrollMorph setScrollDeltas.
	self layoutChanged