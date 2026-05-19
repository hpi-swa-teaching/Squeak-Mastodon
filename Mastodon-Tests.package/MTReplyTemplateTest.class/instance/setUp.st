as yet unclassified
setUp
	template := MTReplyTemplate new
		title: 'super-template';
		content: 'Hello World';
		yourself.
		
	templateAccess := MTReplyTemplateAccess new
		user: 'FelixKoch';
		writeTemplate: template;
		yourself.
	