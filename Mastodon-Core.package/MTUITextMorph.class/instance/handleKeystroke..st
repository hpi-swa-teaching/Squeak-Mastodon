event handling
handleKeystroke: anEvent

	super handleKeystroke: anEvent.
	self
		applyEmojiSupportIfNeeded;
		updateOwnerTextLength