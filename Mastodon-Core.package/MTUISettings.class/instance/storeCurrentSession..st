render
storeCurrentSession: anAPIInstance
	| sessions |

	 sessions := (MTSettingsStore default at: #sessions ifAbsent: [OrderedCollection new]).

    sessions add: anAPIInstance.

Transcript show: 'testStoreCurrentSession'; cr.
Transcript show:anAPIInstance username; cr.

    MTSettingsStore default
        at: #sessions
        put: sessions.

    self refreshSessionsComboBox: sessions.