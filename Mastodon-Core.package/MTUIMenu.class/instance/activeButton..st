morphic
activeButton: aButtonId

	aButtonId = 'noButton' ifTrue: [self deactivateAllButtons] ifFalse: [
		self submorphs do: [:button |
			button id = aButtonId ifTrue: [button active: true] ifFalse: [button active: false].
			button render]]
