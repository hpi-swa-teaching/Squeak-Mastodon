add/remove
createBaseURL
	self
		addTextPreference: #mtBaseURL
		default: self defaultBaseURL
		balloonHelp: 'Add the URL of your Mastodon instance here.'
		