as yet unclassified
testWindowColor

	| Model |
	[Model := MTUIWindow new] on: ProvideAnswerNotification do: [:noti | noti resume: false].
	self
		assert: (self userInterfaceTheme get: #customWindowColor for: #ClassCommentVersionsBrowser)
		equals: Model paneColor