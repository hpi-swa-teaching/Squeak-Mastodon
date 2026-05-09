as yet unclassified
loadMention

	| result |
	result := self mastodonApi getMention.
	
	self mention: result value.
	
	self renderMention.
	self addArchiveNavigationButton