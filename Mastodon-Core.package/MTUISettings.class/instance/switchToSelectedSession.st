render
switchToSelectedSession
	| sessions selectedSession provider |

	sessions := (MTSettingsStore default at: #sessions ifAbsent: [OrderedCollection new]).
	selectedSession := sessions at: sessionsComboBox currentIndex.

	(selectedSession isKindOf: MTBlueSkyApi) 
	ifTrue: [
		provider := 'bluesky'.
		MTProviderFactory blueSkyInstance: selectedSession.
	]
	ifFalse:[
		provider := 'mastodon'.
		MTProviderFactory mastodonInstance: selectedSession.
	].

	MTSettingsStore default at: #provider put: provider.
	MTSettingsStore default at: #baseURL put: selectedSession baseURL.
	MTSettingsStore default at: #token put: selectedSession token.
	
	