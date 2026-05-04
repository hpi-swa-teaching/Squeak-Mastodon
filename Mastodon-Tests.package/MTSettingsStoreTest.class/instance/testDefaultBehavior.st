as yet unclassified
testDefaultBehavior
	MTSettingsStore reset.
	MTSettingsStore default at: #testVar put: 'Test'.
	self assert: (MTSettingsStore default at: #testVar) equals: 'Test'.