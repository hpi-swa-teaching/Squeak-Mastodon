updating
scheduleReplyToot: aText replyTo: aStatusID at: aDateAndTime visibility: aVisibility withMedia: imageID

	[
		imageID
			ifNil: [mastodonApi replyTo: aStatusID text: aText withVisibility: aVisibility scheduleAt: aDateAndTime]
			ifNotNil: [
				mastodonApi
					replyTo: aStatusID
					text: aText
					withMedia: imageID
					withVisibility: aVisibility
					scheduleAt: aDateAndTime]]
		on: Error
		do: [:err |
			self inform: 'There was an API error:', String cr, err.
			^ false].
	
	^ true