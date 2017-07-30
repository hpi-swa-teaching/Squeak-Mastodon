as yet unclassified
addMenuMorph
	self
		addMorph: menuMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 1)
				offsets: (0 @ 0 corner: 70 @ 0 negated)).
	menuMorph color: Color transparent.

	menuMorph addButton: #newTootButton for: #loadNewTootView on: self with:  MTUIIcons newTweet.
	menuMorph addButton: #homeTimelineButton for: #loadHomeTimelineView on: self with: MTUIIcons home.
	menuMorph addButton: #profileButton for: #loadProfileView on: self with: MTUIIcons user.
	menuMorph addButton: #searchButton for: #loadSearchView on: self with: MTUIIcons search.
	menuMorph addButton: #screenshotButton for: #loadScreenshotView on: self with: MTUIIcons camera.
	menuMorph addButton: #settingsButton for: #loadSettingsView on: self with: MTUIIcons settings.
	
	menuMorph drawButtons.