reply-template
replyTemplate
	| menu |

	self mastodonApi isAuthenticated ifFalse: [^false].
	
	menu := DialogWindow new.
	menu title: 'New Reply-Template'.
	menu createButton: 'Save'.
	menu createCancelButton.
	self addMorph: menu.
	
	
	