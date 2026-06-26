render
switchToSelectedSession
	| session provider |

	session := sessionsComboBox currentItem.
	
	
	(session isKindOf: MTBlueSkyApi) 
	ifTrue: [
		provider := 'bluesky'.
	]
	ifFalse:[
		provider := 'mastodon'.
	].

	MTSettingsStore default at: #provider put: provider.
	MTSettingsStore default at: #baseURL put: session baseURL.
	MTSettingsStore default at: #token put: session token.
	
	