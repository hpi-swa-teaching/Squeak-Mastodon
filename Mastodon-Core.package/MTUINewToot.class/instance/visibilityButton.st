accessing-buttons
visibilityButton

	^ visibilityButton ifNil: [
		visibilityButton := self getVisibilityButton.
		self updateVisibilityButton.
		^ visibilityButton]