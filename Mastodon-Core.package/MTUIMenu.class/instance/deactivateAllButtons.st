morphic
deactivateAllButtons

	self submorphs do: [:button |
		button active: false.
		button render]