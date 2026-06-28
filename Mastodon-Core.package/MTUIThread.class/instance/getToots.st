updating
getToots

	| context thread |
	self rootToot ifNil: [^ MTResult value: OrderedCollection new].
	
	context := self mastodonApi getContextOf: self rootToot id.
	context isError ifTrue: [^ context].
	
	thread := OrderedCollection new.
	thread addAll: (context value at: #ancestors).
	thread add: self rootToot.
	thread addAll: (context value at: #descendants).
	
	self computeDepthsFor: thread.
	^ MTResult value: thread