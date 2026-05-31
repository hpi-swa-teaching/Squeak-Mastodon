toot
scheduleToot: aText at: aDateAndTime visibility: aVisibility withMedia: imageID

	[
		imageID
			ifNil: [mastodonApi toot: aText withVisibility: aVisibility scheduleAt: aDateAndTime]
			ifNotNil: [mastodonApi toot: aText withMedia: imageID withVisibility: aVisibility scheduleAt: aDateAndTime]]
		on: Error
		do: [:err |
			self inform: 'There was an API error:', String cr, err.
			^ false].
	^ true