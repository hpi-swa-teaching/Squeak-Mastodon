views
loadNewTootViewWithMorph: aMorph
	"only gets called by MTScreenshot>>loadNewTootWithMorph: which isn't currently in use"

	self mastodonApi hasToken ifFalse: [^ false].
	
	self loadView: (MTUINewToot morph: aMorph) as: #newTootView activate: #newTootButton