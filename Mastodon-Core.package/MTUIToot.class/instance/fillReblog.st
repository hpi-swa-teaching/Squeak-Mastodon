render
fillReblog

	self toot reblog ifNil: [^ nil].
	self content contents: (MTUtils asTextFromHtml: '<i><font color="', self htmlGray, '">reblogged:</font></i>').
	self reblog: (MTUIToot for: self toot reblog).
	self reblog actionsMorph delete.
	self reblog layoutChanged.