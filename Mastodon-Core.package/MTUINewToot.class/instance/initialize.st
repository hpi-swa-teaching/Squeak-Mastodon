initialization
initialize

	super initialize.
	self
		cellInset: 10;
		layoutInset: 20;
		addNewTootTextarea;
		addNewTootButtons;
		addImageButton;
		addNewScheduleButton;
		messageArea: (AlignmentMorph newColumn
			hResizing: #spaceFill;
			vResizing: #shrinkWrap;
			color: Color transparent);
		addMorphBack: messageArea;
		addDatePicker;
		tootSizeLabel: (TextMorph new contents: (tootTextArea contents size asString, '/500') asHtmlText);
		addMorph: tootSizeLabel;
		reloadMentionTimeline: false;
		addMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText)