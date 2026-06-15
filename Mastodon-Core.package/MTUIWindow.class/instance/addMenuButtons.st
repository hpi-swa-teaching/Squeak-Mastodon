render
addMenuButtons
	menuMorph addButton: #newTootButton for: #loadNewTootView on: self with:  MTUIIcons newToot.
	menuMorph addButton: #homeTimelineButton for: #loadHomeTimelineView on: self with: MTUIIcons home.
	menuMorph addButton: #trendingTimelineButton for: #loadTrendingTimelineView on: self with: MTUIIcons trending.
	menuMorph addButton: #liveTimelineButton for: #loadLiveTimelineView on: self with: MTUIIcons world.
	menuMorph addButton: #searchButton for: #loadSearchView on: self with: MTUIIcons search.
	menuMorph addButton: #screenshotButton for: #loadScreenshotView on: self with: MTUIIcons camera.
	menuMorph addButton: #settingsButton for: #loadSettingsView on: self with: MTUIIcons settings.
