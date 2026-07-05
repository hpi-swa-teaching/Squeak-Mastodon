settings store
testResetCreatesFreshStore

	| saved |
	saved := MTSettingsStore default.
	
	MTSettingsStore reset.
	
	self assert: (MTSettingsStore default at: #provider) equals: #mastodon.
	self deny: MTSettingsStore default == saved.
	
	MTSettingsStore default: saved