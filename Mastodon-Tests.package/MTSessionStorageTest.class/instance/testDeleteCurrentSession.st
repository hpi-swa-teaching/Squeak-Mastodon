tests
testDeleteCurrentSession

	| api1 api2 sessions |
	api1 := MTMastodonApi new.
	api2 := MTMastodonApi new.
	
	view storeCurrentSession: api1.
	view storeCurrentSession: api2.
	
	view sessionsComboBox currentIndex: 1.
	
	view deleteCurrentSession.
	
	sessions := MTSettingsStore default at: #sessions.
	
	self assert: sessions size equals: 1.
	self assert: sessions first == api2