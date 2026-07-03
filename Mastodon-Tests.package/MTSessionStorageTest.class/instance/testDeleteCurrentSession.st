tests
testDeleteCurrentSession

	| api1 api2 sessions |
	api1 := MTMastodonApi new.
	api2 := MTMastodonApi new.
	
	self view storeCurrentSession: api1.
	self view storeCurrentSession: api2.
	
	self view sessionsComboBox currentIndex: 1.
	
	self view deleteCurrentSession.
	
	sessions := MTSettingsStore default at: #sessions.
	
	self assert: sessions size equals: 1.
	self assert: sessions first == api2