reply-template
replyTemplate
	| templateTitleText templateContentText replyTemplate localReplyTemplateAccess successfullySavedText |
	
	self mastodonApi isAuthenticated ifFalse: [^false].
	templateTitleText := replyTemplateTitle contents asString.
	templateTitleText size == 0
		ifTrue: [self inform: 'The template title is not allowed to be empty.'.
			^ false].
	templateTitleText size > 20
		ifTrue: [self inform: 'Not more than 20 characters allowed.'.
			^ false].
		
	templateContentText := replyTemplateTextArea contents asString.
	templateContentText size == 0
		ifTrue: [self inform: 'Template content is not allowed to be empty.'.
			^ false].
	templateContentText size > 500
		ifTrue: [self inform: 'Not more than 500 characters allowed.'.
			^ false].
		
	replyTemplate := MTReplyTemplate new.
	replyTemplate title: templateTitleText.
	replyTemplate content: templateContentText.
	
	localReplyTemplateAccess := MTReplyTemplateAccess new.	
	localReplyTemplateAccess user: self mastodonApi.
	localReplyTemplateAccess writeTemplate: replyTemplate.
	
	replyTemplateTitle contents: ''.
	replyTemplateTextArea contents: ''.
	
	successfullySavedText := TextMorph new.
	successfullySavedText contents: 'Template successfully saved';
							color: Color blue.
	self addMorphBack: successfullySavedText.
	
	[
		(Delay forSeconds: 3) wait.
		successfullySavedText delete.
	] fork.

	^ true