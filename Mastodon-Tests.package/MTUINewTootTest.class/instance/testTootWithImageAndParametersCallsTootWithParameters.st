actions
testTootWithImageAndParametersCallsTootWithParameters

	| newTootView parameters |
	newTootView := MTUINewToot new.
	
	newTootView media: {MTDataProvider emptyImageForm} asOrderedCollection.
	parameters := newTootView tootParameters.
	newTootView tootWithImageAndParameters: parameters.
	
	self assert: self mastodonApi tootWithParametersCalled.
	self assert: self mastodonApi tootWithParameterAndMediaCalled