updating
refreshTimeline

	self timelineMorph: nil.
	self timelineMorph: (MTUIUserTimeline new
		id: self account id;
		loadTootsOf: self account)