actions
cancelToot: aScheduledTootMorph

	self mastodonApi cancelScheduledToot: aScheduledTootMorph toot id.
	aScheduledTootMorph delete