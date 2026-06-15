accessing
handleKeystroke: anEvent

	| text interval |
	super handleKeystroke: anEvent.
	text := self contents.
	(text string anySatisfy: [:c | c asInteger > 65535]) ifTrue: [
		interval := self editor selectionInterval.
		MTEmojiSupport applyTo: text.
		self newContents: text.
		self editor selectFrom: interval first to: interval last].
	self owner owner updateTextSize