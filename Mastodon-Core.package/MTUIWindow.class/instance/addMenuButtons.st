render
addMenuButtons
	menuMorph addButton: #newTootButton for: #loadNewTootView on: self with:  MTUIIcons newTweet.
	menuMorph addButton: #homeTimelineButton for: #loadHomeTimelineView on: self with: MTUIIcons home.
	menuMorph addButton: #profileButton for: #loadProfileView on: self with: MTUIIcons user.
	menuMorph addButton: #searchButton for: #loadSearchView on: self with: MTUIIcons search.
	menuMorph addButton: #screenshotButton for: #loadScreenshotView on: self with: MTUIIcons camera.
	menuMorph addButton: #settingsButton for: #loadSettingsView on: self with: MTUIIcons settings.