as yet unclassified
loadNewTootViewWithMorph: aMorph
	self mastodonApi isAuthenticated ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi morph: aMorph)
		as: #newTootView 
		activate: #newTootButton.