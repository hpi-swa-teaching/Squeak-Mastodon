render
addMenuButtons
	menuMorph addButton: #newTootButton for: #loadNewTootView on: self with:  MTUIIcons newToot.
	menuMorph addButton: #homeTimelineButton for: #loadHomeTimelineView on: self with: MTUIIcons home.
	menuMorph addButton: #trendingTimelineButton for: #loadTrendingTimelineView on: self with: MTUIIcons trending.
	menuMorph addButton: #liveTimelineButton for: #loadLiveTimelineView on: self with: MTUIIcons world.
	(self mastodonApi isKindOf: MTBlueSkyApi) ifTrue: [
		menuMorph addButton: #likedPostsButton for: #loadLikedPostsView on: self with: MTUIIcons heartBlack].
	menuMorph addButton: #profileButton for: #loadProfileView on: self with: MTUIIcons user.
	menuMorph addButton: #searchButton for: #loadSearchView on: self with: MTUIIcons search.
	menuMorph addButton: #screenshotButton for: #loadScreenshotView on: self with: MTUIIcons camera.
	menuMorph addButton: #settingsButton for: #loadSettingsView on: self with: MTUIIcons settings.