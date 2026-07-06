views
loadThreadViewOf: aToot

	| thread |
	self ensureLoggedIn ifFalse: [^ false].
	
	thread := MTUIThread new rootToot: aToot.
	thread loadToots ifFalse: [^ false].
	
	self viewMorph ifNil: [^ self].
	self viewHistory addLast: self viewMorph -> self scrollMorph scroller offset copy.
	
	self loadedViews at: #threadView put: thread.
	self updateViewMorph: thread