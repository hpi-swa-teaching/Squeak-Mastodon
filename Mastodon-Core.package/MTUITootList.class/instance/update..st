updating
update: aMessage

	aMessage = #endReached ifTrue: [self loadMoreToots].
	aMessage = #beginReached ifTrue: [self refreshToots]