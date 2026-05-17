add/remove
addAccessToken
	self
		addTextPreference: #mtAccessToken
		default: self defaultAccessToken
		balloonHelp: 'Add the access token for your Mastodon instance here. There can only be one token at one time.'
		