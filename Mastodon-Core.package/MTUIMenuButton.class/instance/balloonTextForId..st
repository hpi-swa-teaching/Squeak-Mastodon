render
balloonTextForId: aSymbol

	^ aSymbol caseOf: {
		[#newTootButton] -> ['Write a new toot'].
		[#homeTimelineButton] -> ['Home timeline'].
		[#trendingTimelineButton] -> ['Trending toots'].
		[#liveTimelineButton] -> ['Live federated timeline'].
		[#profileButton] -> ['Your profile'].
		[#searchButton] -> ['Search users'].
		[#screenshotButton] -> ['Take a screenshot'].
		[#settingsButton] -> ['Settings'] } otherwise: ['']