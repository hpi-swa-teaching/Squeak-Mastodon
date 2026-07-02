add-template
verifyReplyTemplateTitleIsWithinBounds

	| templateTitleText |
	templateTitleText := replyTemplateTitle contents asString.
	templateTitleText size == 0 ifTrue: [
		self inform: 'The template title is not allowed to be empty.'.
		^ false].
	templateTitleText size > self maxTitleSize ifTrue: [
		self inform: 'Not more than ', self maxTitleSize, ' characters allowed.'.
		^ false].
	^ true