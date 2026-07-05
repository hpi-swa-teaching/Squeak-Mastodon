actions
testSendTootWithParametersWithoutMedia

	| newTootView parameters |
	newTootView := MTUINewToot new.
	parameters := newTootView tootParameters.
	
	newTootView
		media: {} asOrderedCollection;
		sendTootWithParameters: parameters.
	
	self assert: self mastodonApi tootWithParametersCalled