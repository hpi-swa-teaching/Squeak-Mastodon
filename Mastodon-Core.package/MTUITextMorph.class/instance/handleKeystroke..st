accessing
handleKeystroke: anEvent
	super handleKeystroke: anEvent.
	self textSize: self contents asString size.
	self owner owner updateTextSize.
