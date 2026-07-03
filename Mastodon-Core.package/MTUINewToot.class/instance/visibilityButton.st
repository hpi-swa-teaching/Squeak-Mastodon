accessing
visibilityButton

	^ visibilityButton ifNil: [visibilityButton := self getVisibilityButton]