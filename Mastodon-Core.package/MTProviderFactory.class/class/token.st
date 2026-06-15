helpers
token

	^ MTSettingsStore default at: #token ifAbsent: [nil]