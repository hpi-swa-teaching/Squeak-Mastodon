running
tearDown

	| store |
	store := MTSettingsStore default.
	store keys asArray do: [:key | store removeKey: key ifAbsent: []].
	self storedSettings keysAndValuesDo: [:key :value | store at: key put: value]