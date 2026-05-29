as yet unclassified
ensureEmojiFont

	| dir |
	(TextConstants includesKey: #NotoEmoji) ifTrue: [^ self].
	dir := FileDirectory default.
	(dir fileExists: 'NotoEmoji-Regular.ttf') ifFalse: [self downloadFont].
	(dir fileExists: 'NotoEmoji-Regular.ttf') ifFalse: [^ self].
	[TTCFont newTextStyleFromTTFile: (dir fullNameFor: 'NotoEmoji-Regular.ttf')]
		on: Error do: [^ self].
	self registerAsFallback