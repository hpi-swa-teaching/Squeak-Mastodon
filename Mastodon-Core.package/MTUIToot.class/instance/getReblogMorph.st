render
getReblogMorph

	| reblogMorph |
	self object reblog ifNotNil: [
		reblogMorph := MTUIToot for: self object reblog.
		reblogMorph actionsMorph delete].
	self object quote ifNotNil: [
		reblogMorph := MTUIToot for: self object quote.
		reblogMorph actionsMorph delete].
	
	^ reblogMorph