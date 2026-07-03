render
loadComboBox

	| sessions |
	sessions := MTSettingsStore default at: #sessions ifAbsent: [OrderedCollection new].
	self sessionsComboBox addItemListFrom: sessions using: [:session :item | item text: session username]