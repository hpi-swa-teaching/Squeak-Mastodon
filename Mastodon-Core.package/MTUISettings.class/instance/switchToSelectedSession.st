render
switchToSelectedSession

	| sessions |
	sessions := MTSettingsStore default at: #sessions ifAbsent: [OrderedCollection new].
	self activateSession: (sessions at: self sessionsComboBox currentIndex).
	
	MTUIWindow instance ifNotNil: [MTUIWindow instance refreshProvider]