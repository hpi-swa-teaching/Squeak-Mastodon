initialization
initialize
	super initialize.
		 
	self cellInset: 10;
		 layoutInset: 20;
		 addNewTootTextarea;
		 tootSizeLabel: (TextMorph new contents: (tootTextArea contents size asString , '/500') asHtmlText);
		 addMorphBack: tootSizeLabel;
		 
		addNewTootButtons;
		 addImageButton;
		
		addMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText);
		addMorphBack: (TextMorph new contents: '<b>New Reply-Template</b>' asHtmlText);
		
		addMorphBack: (TextMorph new contents: '<p>Title</p>' asHtmlText);
		addNewReplyTemplateTitle;
		replyTemplateTitleSizeLabel: (TextMorph new contents: (replyTemplateTitle contents size asString , '/20') asHtmlText);
		addMorphBack: replyTemplateTitleSizeLabel;
		
		addMorphBack: (TextMorph new contents: '<p>Content</p>' asHtmlText);
		addNewReplyTemplateTextarea;
		replyTemplateContentSizeLabel: (TextMorph new contents: (replyTemplateTextArea contents size asString , '/500') asHtmlText);
		addMorphBack: replyTemplateContentSizeLabel;
		
		addNewReplyTemplateButton.