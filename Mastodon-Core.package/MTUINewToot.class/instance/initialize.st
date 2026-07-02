initialization
initialize

	super initialize.
	self
		cellInset: 10;
		layoutInset: 20;
		addNewTootTextarea;
		addNewTootButtons;
		addImageButton;
		addScheduleArea;
		messageArea: (AlignmentMorph newColumn
			hResizing: #spaceFill;
			vResizing: #shrinkWrap;
			color: Color transparent;
			yourself);
		addMorphBack: self messageArea;
		tootSizeLabel: (TextMorph new contents: (self tootTextArea contents size asString, '/', self maxTextSize) asHtmlText);
		addMorph: self tootSizeLabel;
		reloadMentionTimeline: false;
		addMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText);
		yourself