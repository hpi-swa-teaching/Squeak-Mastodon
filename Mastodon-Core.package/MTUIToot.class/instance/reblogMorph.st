render
reblogMorph

	| reblogMorph |
	self object reblog ifNotNil: [
		reblogMorph := MTUIToot new for: self object reblog.
		reblogMorph actionsMorph delete].
	self object quote ifNotNil: [
		reblogMorph := MTUIToot new for: self object quote.
		reblogMorph actionsMorph delete].
	^ reblogMorph