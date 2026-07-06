actions
testTootSendsTootWithParameters

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: 'Test'.
	
	newTootView toot.
	
	self assert: self mastodonApi tootWithParametersCalled