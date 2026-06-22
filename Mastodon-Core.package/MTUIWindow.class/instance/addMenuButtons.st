render
addMenuButtons

	menuMorph
		addButton: #newTootButton for: #loadNewTootView on: self with: MTUIIcons newToot;
		addButton: #homeTimelineButton for: #loadHomeTimelineView on: self with: MTUIIcons home;
		addButton: #trendingTimelineButton for: #loadTrendingTimelineView on: self with: MTUIIcons trending;
		addButton: #liveTimelineButton for: #loadLiveTimelineView on: self with: MTUIIcons world;
		addButton: #profileButton for: #loadProfileView on: self with: MTUIIcons user;
		addButton: #searchButton for: #loadSearchView on: self with: MTUIIcons search;
		addButton: #screenshotButton for: #loadScreenshotView on: self with: MTUIIcons camera