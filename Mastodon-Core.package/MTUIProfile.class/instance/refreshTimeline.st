updating
refreshTimeline

	self timelineMorph: nil.
	self timelineMorph: (MTUIUserTimeline new
		id: self account id;
		mastodonApi: self mastodonApi;
		loadTootsOf: self account)