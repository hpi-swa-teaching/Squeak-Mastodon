add-template
verifyReplyTemplateTitleIsWithinBounds

	| templateTitleText |
	templateTitleText := replyTemplateTitle contents asString.
	templateTitleText size == 0
		ifTrue: [self inform: 'The template title is not allowed to be empty.'.
			^ false].
	templateTitleText size > 20
		ifTrue: [self inform: 'Not more than 20 characters allowed.'.
			^ false].
	^ true	