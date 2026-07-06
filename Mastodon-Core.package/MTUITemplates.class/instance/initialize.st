initialization
initialize

	super initialize.
	
	self
		cellInset: 10;
		layoutInset: 20;
		addMorphBack: (TextMorph new contents: '<b>New Reply-Template</b>' asHtmlText);
		addMorphBack: (TextMorph new contents: '<p>Title</p>' asHtmlText);
		addNewReplyTemplateTitle;
		addMorphBack: (TextMorph new contents: '<p>Content</p>' asHtmlText);
		addNewReplyTemplateTextArea;
		replyTemplateContentSizeLabel: (TextMorph new contents: (self replyTemplateTextArea contents size asString, '/', self maxTextSize) asHtmlText);
		addMorphBack: self replyTemplateContentSizeLabel;
		addNewReplyTemplateButton;
		addEditReplyTemplateButton;
		addDeleteReplyTemplateButton