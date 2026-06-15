render
renderNewScheduledTootsSection

	self
		cellInset: 10;
		layoutInset: 20;
		addNewScheduledTootTextarea;
		addNewScheduleArea;
		addNewScheduleButton;
		addImageButton;
		messageArea: (AlignmentMorph newColumn
			hResizing: #spaceFill;
			vResizing: #shrinkWrap;
			color: Color transparent);
		addMorphBack: messageArea;
		tootSizeLabel: (TextMorph new contents: (scheduledTootTextArea contents size asString, '/500') asHtmlText);
		addMorph: tootSizeLabel;
		addMorph: (TextMorph new contents: '<b>Schedule new toot</b>' asHtmlText)