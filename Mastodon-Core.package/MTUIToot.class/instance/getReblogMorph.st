render
getReblogMorph

	| reblogMorph |
	self toot reblog ifNotNil: [
		reblogMorph := MTUIToot for: self toot reblog.
		reblogMorph actionsMorph delete].
	self toot quote ifNotNil: [
		reblogMorph := MTUIToot for: self toot quote.
		reblogMorph actionsMorph delete].
	
	^ reblogMorph