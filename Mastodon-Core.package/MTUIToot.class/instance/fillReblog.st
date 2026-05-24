render
fillReblog

	self toot reblog ifNotNil: [
		self content contents: (MTUtils asTextFromHtml: '<i><font color="', self htmlGray, '">reblogged:</font></i>').
		self reblog: (MTUIToot for: self toot reblog).
		self reblog actionsMorph delete.
		self reblog layoutChanged].
	self toot quote ifNotNil: [
		self content contents: (MTUtils asTextFromHtml: self toot content).
		self reblog: (MTUIToot for: self toot quote).
		self reblog actionsMorph delete.
		self reblog layoutChanged]