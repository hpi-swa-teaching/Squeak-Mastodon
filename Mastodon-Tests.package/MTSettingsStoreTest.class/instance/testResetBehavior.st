as yet unclassified
testResetBehavior
	MTSettingsStore reset.
	MTSettingsStore default at: #testVar put: 'Test'.
	MTSettingsStore reset.
	self assert: (MTSettingsStore default includesKey: #testVar) not.