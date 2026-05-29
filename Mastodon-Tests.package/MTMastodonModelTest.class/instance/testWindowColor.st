as yet unclassified
testWindowColor

	| Model |
	Model := MTUIWindow new.
	
	self
		assert: (self userInterfaceTheme get: #customWindowColor for: #ClassCommentVersionsBrowser)
		equals: Model paneColor