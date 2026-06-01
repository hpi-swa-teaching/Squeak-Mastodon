render
initReblogMorph

	self toot reblog ifNotNil: [
		self reblogMorph: (MTUIToot for: self toot reblog).
		self reblogMorph actionsMorph delete].
	self toot quote ifNotNil: [
		self reblogMorph: (MTUIToot for: self toot quote).
		self reblogMorph actionsMorph delete]