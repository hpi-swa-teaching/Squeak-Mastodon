render
renderNewScheduledTootsSection

	self 
		cellInset: 10;
		layoutInset: 20;
		addMorphBack: (TextMorph new contents: '<b>Schedule new toot</b>' asHtmlText);
		addNewScheduledTootTextarea;
		addNewScheduleArea;
		addNewScheduleButton.