toot
sendPostFeedback

	self removeOldMorph.
	self updateTextSize.
	feedbackMorph show.
	self addAlarm: #removeFeedback after: 5000