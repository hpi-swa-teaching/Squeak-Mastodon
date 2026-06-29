render
storeCurrentSession: anAPIInstance
	| sessions |

	sessions := (MTSettingsStore default at: #sessions ifAbsent: [OrderedCollection new]).
	sessions add: anAPIInstance.
	
	MTSettingsStore default
        at: #sessions
        put: sessions.

    self addSessionToComboBox: anAPIInstance.