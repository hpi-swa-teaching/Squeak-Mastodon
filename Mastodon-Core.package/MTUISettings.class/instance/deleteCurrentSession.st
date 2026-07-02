render
deleteCurrentSession

	| sessions |
	sessions := MTSettingsStore default at: #sessions ifAbsent: [OrderedCollection new].
	
	sessions removeAt: sessionsComboBox currentIndex.
	
	MTSettingsStore default at: #sessions put: sessions.
	
	
	"self refreshSessionsComboBox."