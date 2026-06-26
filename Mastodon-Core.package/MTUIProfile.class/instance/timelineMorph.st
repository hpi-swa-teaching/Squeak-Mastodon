accessing
timelineMorph

	^ timelineMorph ifNil: [timelineMorph := MTUIUserTimeline for: self account id]