updating
getToots

	| context thread |
	self rootToot ifNil: [^ {}].
	context := self mastodonApi getContextOf: self rootToot id.
	
	thread := OrderedCollection new
		addAll: (context ancestors);
		add: self rootToot;
		addAll: (context descendants).
	
	self computeDepthsFor: thread.
	
	^ thread