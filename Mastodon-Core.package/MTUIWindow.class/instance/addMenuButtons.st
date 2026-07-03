render
addMenuButtons

	self menuMorph addButton: #newTootButton for: #loadNewTootView on: self with: MTUIIcons newTweet.
	self menuMorph addButton: #homeTimelineButton for: #loadHomeTimelineView on: self with: MTUIIcons home.
	self mastodonApi showsLikedPosts ifTrue: [
		self menuMorph
			addButton: #likedPostsButton
			for: #loadLikedPostsView
			on: self
			with: MTUIIcons heartBlack].
	self menuMorph addButton: #profileButton for: #loadProfileView on: self with: MTUIIcons user.
	self menuMorph addButton: #searchButton for: #loadSearchView on: self with: MTUIIcons search.
	self menuMorph addButton: #screenshotButton for: #loadScreenshotView on: self with: MTUIIcons camera.
	self menuMorph addButton: #settingsButton for: #loadSettingsView on: self with: MTUIIcons settings