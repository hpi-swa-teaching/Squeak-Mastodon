helpers
updateOwnerTextLength

	self owner ifNotNil: [:owner | owner owner ifNotNil: [:outerOwner | outerOwner updateTextLength]]