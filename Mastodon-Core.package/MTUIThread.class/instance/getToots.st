updating
getToots

	| context thread |
	self rootToot ifNil: [^ {}].
	context := self mastodonApi getContextOf: self rootToot id.
	
	thread := OrderedCollection new
		addAll: (context at: #ancestors);
		add: self rootToot;
		addAll: (context at: #descendants).
	
	self computeDepthsFor: thread.
	
	^ thread