render
addSessionToComboBox: aMTApiInstance

	| sessions |
	sessions := OrderedCollection new.
	sessions add: aMTApiInstance.
	
	self sessionsComboBox addItemListFrom: sessions using: [:session :item | item text: session username]