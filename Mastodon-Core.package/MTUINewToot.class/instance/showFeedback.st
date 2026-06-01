toot
showFeedback

	self removeOldMorph.
	self updateTextSize.
	feedbackMorph show.
	self addAlarm: #hideFeedback after: 5000