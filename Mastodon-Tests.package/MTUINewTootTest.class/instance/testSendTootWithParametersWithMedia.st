actions
testSendTootWithParametersWithMedia

	| newTootView parameters |
	newTootView := MTUINewTootClassTest new.
	
	newTootView media: {MTDataProvider emptyImageForm} asOrderedCollection.
	parameters := newTootView tootParameters.
	newTootView sendTootWithParameters: parameters.
	
	self assert: self mastodonApi tootWithParametersCalled.
	self assert: self mastodonApi tootWithParameterAndMediaCalled