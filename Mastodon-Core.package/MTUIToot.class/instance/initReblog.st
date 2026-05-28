render
initReblog

	self toot reblog ifNotNil: [
		self reblog: (MTUIToot for: self toot reblog).
		self reblog actions delete].
	self toot quote ifNotNil: [
		self content contents: (MTUtils asTextFromHtml: self toot content).
		self reblog: (MTUIToot for: self toot quote).
		self reblog actions delete]