render
loadComboBox

	| sessions activeIndex |
	sessions := MTSettingsStore default at: #sessions ifAbsent: [OrderedCollection new].
	self sessionsComboBox addItemListFrom: sessions using: [:session :item | item text: session username].
	activeIndex := sessions indexOf: MTProviderFactory providerFromSettings.
	activeIndex > 0 ifTrue: [self sessionsComboBox currentIndex: activeIndex]