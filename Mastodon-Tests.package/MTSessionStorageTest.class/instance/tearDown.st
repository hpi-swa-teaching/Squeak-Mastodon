running
tearDown

	| store |
	store := MTSettingsStore default.
	store keys asArray do: [:key | store removeKey: key ifAbsent: []].
	storedSettings keysAndValuesDo: [:key :value | store at: key put: value].
	MTProviderFactory mastodonInstance: nil.
	MTProviderFactory blueSkyInstance: nil.
	
	super tearDown