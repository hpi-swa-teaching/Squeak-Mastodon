updating
updateTitleMorph

	| title |
	self inReplyToId ifNotNil: [title := self replyTitle] ifNil: [title := self newTootTitle].
	
	self titleMorph contents: title